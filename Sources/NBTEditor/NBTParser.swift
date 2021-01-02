import Foundation


public class NBTParser {
    let nbtData: Data
    var iterator: Data.Iterator
    
    public init(data: Data) {
        self.nbtData = data
        self.iterator = self.nbtData.makeIterator()
    }
    
    public func getHeader() throws -> (version:Int, fileSize: Int) {
        let version = try Int32(iterator: &iterator)
        let fileSize = try Int32(iterator: &iterator)
        return (Int(version), Int(fileSize)+8)
    }
    
    public func getTagType() -> NBTagType {
        return NBTagType(rawValue: Int(iterator.next()!))!
    }
    
    public func getTagName() throws -> String {
        return try String(iterator: &iterator)
    }
    
    public func getTagValue(tagType: NBTagType) throws -> NamedBinaryTagValue? {
        switch tagType {
        case .Byte:
            return try Int8(iterator: &iterator)
        case .Short:
            return try Int16(iterator: &iterator)
        case .Int:
            return try Int32(iterator: &iterator)
        case .Long:
            return try Int64(iterator: &iterator)
        case .Float:
            return try Float32(iterator: &iterator)
        case .Double:
            return try Float64(iterator: &iterator)
        case .ByteArray:
            return try [Int8](iterator: &iterator)
        case .String:
            return try String(iterator: &iterator)
        case .List:
            fatalError("Unimplemented : TAG_List")
        case .IntArray:
            return try [Int32](iterator: &iterator)
        case .LongArray:
            return try [Int64](iterator: &iterator)
        default:
            return nil
        }
    }
    
    public func getTag() throws -> NBTag {
        let tagType = getTagType()
        guard tagType != .End else {
            return NBTag(type: .End, name: "TAG_End", value: nil)
        }
        
        let tagName = try getTagName()
        let tagValue = try getTagValue(tagType: tagType)
        let tag = NBTag(type: tagType, name: tagName, value: tagValue)
        
        if tagType == .Compound {
            var children = [NBTag]()
            while true {
                let childTag = try getTag()
                if childTag.isEndTag() {
                    break
                }
                children.append(childTag)
            }
            tag.add(tags: children)
        }
        
        return tag
    }
    
}
