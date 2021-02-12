import Foundation

public enum NBTagType: Int8 {
    case End
    case Byte
    case Short
    case Int
    case Long
    case Float
    case Double
    case ByteArray
    case String
    case List
    case Compound
    case IntArray
    case LongArray
    
    var nbtData: Data {
        return self.rawValue.nbtData
    }
}

public enum NBTError: Error {
    case endOfNBTData
    case wrongPayloadLength
}
