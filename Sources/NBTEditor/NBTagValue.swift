import Foundation



extension Data.Iterator {
    public mutating func next(count: Int) -> Data? {
        var byteArray = [UInt8]()
        for _ in 1...count {
            guard let byte = next() else {
                return nil
            }
            byteArray.append(byte)
        }
        return Data(byteArray)
    }
}



public protocol NamedBinaryTagValue {
    // https://stackoverflow.com/questions/38023838/round-trip-swift-number-types-to-from-data
    var nbtData: Data {get}
    init(iterator nbtDataIterator: inout Data.Iterator) throws
}

// TAG_Byte, TAG_Short, TAG_Int, TAG_Long
extension FixedWidthInteger {
    
    public var nbtData: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
    
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = MemoryLayout<Self>.size
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(littleEndian: nbtData.withUnsafeBytes{
                $0.load(as: Self.self)
            })
        } else {
            throw NBTError.endOfNBTData
        }
    }
}

extension Int8: NamedBinaryTagValue {}
extension Int16: NamedBinaryTagValue {}
extension Int32: NamedBinaryTagValue {}
extension Int64: NamedBinaryTagValue {}

// TAG_Float
extension Float32: NamedBinaryTagValue {
    
    public var nbtData: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
    
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = 4
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(bitPattern: nbtData.withUnsafeBytes{
                $0.load(as: UInt32.self)
            })
        } else {
            throw NBTError.endOfNBTData
        }
    }
}

// TAG_Double
extension Float64: NamedBinaryTagValue {
    
    public var nbtData: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
    
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = 8
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(bitPattern: nbtData.withUnsafeBytes{
                $0.load(as: UInt64.self)
            })
        } else {
            throw NBTError.endOfNBTData
        }
    }
}

// TAG_String
extension String: NamedBinaryTagValue {
    
    public var nbtData: Data {
        let payload = UInt16(self.count).nbtData
        let strData = self.data(using: .utf8)!
        return payload + strData
    }
    
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        // payload of StringTag's length is 2 bytes(unsigned) --> UInt16
        let payloadLength = try UInt16(iterator: &nbtDataIterator)
        if payloadLength == 0 {
            self.init("")
            return
        }
        
        let data = nbtDataIterator.next(count: Int(payloadLength))
        if let nbtData = data {
            self.init(data: nbtData, encoding: .utf8)!
        } else {
            throw NBTError.endOfNBTData
        }
    }
}

// TAG_List,      TAG_Byte_Array, TAG_Int_Array, TAG_Long_Array
// number + elements.
// element's number --> Tag_Int --> Int32
extension Array: NamedBinaryTagValue where Element: NamedBinaryTagValue {
    
    public var nbtData: Data {
        var data = Data()
        data += Int32(self.count).nbtData
        for elem in self {
            data += elem.nbtData
        }
        return data
    }
    
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        
        let elemCount = try Int( Int32(iterator: &nbtDataIterator) )
        
        try self.init(unsafeUninitializedCapacity: elemCount) { buffer, count in
            for i in 0..<elemCount {
                print("===> i=", i)
                buffer[i] = try Element.init(iterator: &nbtDataIterator)
            }
            count = elemCount
        }
    }
}

