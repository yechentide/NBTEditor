import Foundation


public protocol NamedBinaryTagValue {
    init(iterator nbtDataIterator: inout Data.Iterator) throws
}

// TAG_Byte, TAG_Short, TAG_Int, TAG_Long
public extension FixedWidthInteger {
    init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = MemoryLayout<Self>.size
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(littleEndian: nbtData.withUnsafeBytes{
                $0.load(as: Self.self)
            })
        } else {
            throw NBTError.wrongPayloadLength
        }
    }
}

extension Int8: NamedBinaryTagValue {}
extension Int16: NamedBinaryTagValue {}
extension Int32: NamedBinaryTagValue {}
extension Int64: NamedBinaryTagValue {}

// TAG_Float
extension Float32: NamedBinaryTagValue {
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = 4
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(bitPattern: nbtData.withUnsafeBytes{
                $0.load(as: UInt32.self)
            })
        } else {
            throw NBTError.wrongPayloadLength
        }
    }
}

// TAG_Double
extension Float64: NamedBinaryTagValue {
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        let payloadLength = 8
        let data = nbtDataIterator.next(count: payloadLength)
        if let nbtData = data {
            self.init(bitPattern: nbtData.withUnsafeBytes{
                $0.load(as: UInt64.self)
            })
        } else {
            throw NBTError.wrongPayloadLength
        }
    }
}

// TAG_String
extension String: NamedBinaryTagValue {
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        // payload of StringTag's length is 2 bytes --> Int16
        let payloadLength = try Int16(iterator: &nbtDataIterator)
        if payloadLength == 0 {
            self.init("")
        }
        
        let data = nbtDataIterator.next(count: Int(payloadLength))
        if let nbtData = data {
            self.init(data: nbtData, encoding: .utf8)!
        } else {
            throw NBTError.wrongPayloadLength
        }
    }
}

// TAG_Byte_Array, TAG_List, TAG_Int_Array, TAG_Long_Array
// number + elements.
// element's number --> Tag_Int --> Int32
extension Array: NamedBinaryTagValue where Element: NamedBinaryTagValue {
    public init(iterator nbtDataIterator: inout Data.Iterator) throws {
        
        let elemCount = try Int( Int32(iterator: &nbtDataIterator) )
        
        try self.init(unsafeUninitializedCapacity: elemCount) { buffer, count in
            for i in 0..<elemCount {
                buffer[i] = try Element.init(iterator: &nbtDataIterator)
            }
            count = elemCount
        }
    }
}

