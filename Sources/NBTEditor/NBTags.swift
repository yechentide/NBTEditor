import Foundation


open class NBTag {
    private let tagType: NBTagType
    private let tagName: String
    private var tagValue: NamedBinaryTagValue? = nil
    private var childrenTags: [NBTag]? = nil
    
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
        if let _ = childrenTags {
            childrenTags!.append(tag)
        } else {
            childrenTags = [NBTag]()
        }
    }
    
    public func add(tags: [NBTag]) {
        if let _ = childrenTags {
            childrenTags!.append(contentsOf: tags)
        } else {
            childrenTags = [NBTag]()
        }
    }
}
