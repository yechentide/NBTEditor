import Foundation


open class NBTag {
    public let tagType: NBTagType
    public let tagName: String
    public var tagValue: NamedBinaryTagValue? = nil
    public var childrenTags: [NBTag]? = nil
    
    public init(type: NBTagType, name: String, value: NamedBinaryTagValue?) {
        self.tagType = type
        self.tagName = name
        self.tagValue = value
    }
    
    public func isEndTag() -> Bool {
        return tagType == .End ? true : false
    }
}

extension NBTag {
    public func add(tag: NBTag) {
        if childrenTags == nil {
            childrenTags = [NBTag]()
        }
        childrenTags!.append(tag)
    }
    
    public func add(tags: [NBTag]) {
        if childrenTags == nil {
            childrenTags = [NBTag]()
        }
        childrenTags!.append(contentsOf: tags)
    }
}

extension NBTag {
    public func exportNBT(exceptionData: Data?) -> Data {
        var data = Data()
        
        data += self.tagType.nbtData
        data += self.tagName.nbtData
        
        // exception of List Tag's element tag type
        if let d = exceptionData {
            data += d
        }
        
        if let value = self.tagValue {
            data += value.nbtData
        }
        
        if let children = self.childrenTags {
            children.forEach {
                let exception = ["MinimumCompatibleClientVersion", "lastOpenedWithVersion"]
                if exception.contains($0.tagName) {
                    data += $0.exportNBT(exceptionData: Data([0x03]))
                } else {
                    data += $0.exportNBT(exceptionData: nil)
                }
            }
        }
        
        if self.tagType == .Compound {
            data += Data([0x00])
        }
        
        return data
    }
}
