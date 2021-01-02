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
    public func getChildrenTagsCount() -> Int {
        if childrenTags == nil {
            return -1
        } else {
            return childrenTags!.count
        }
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
