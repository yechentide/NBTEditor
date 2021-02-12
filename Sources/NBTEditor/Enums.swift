public enum NBTagType: Int {
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
}

public enum NBTError: Error {
    case endOfNBTData
    case wrongPayloadLength
}
