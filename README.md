# NBTEditor

This is a simple library for parsing files in NBT format.

## Usage

```swift
let data: Data = /*NBT data*/
let parser = NBTParser(data: data)

do {
    // if you want to parse a level.dat file of mcbe, please call getHeader() first
    let (version, dataSize) = try parser.getHeader()
    print(version!, dataSize!)

    let rootTag = try parser.getTag()
    
    print(rootTag.tagType)
    print(rootTag.tagName)
    print(rootTag.tagValue ?? "no value")
    print(rootTag.childrenTags?.count ?? "no children")
    
} catch {
	print(error)
}
```

## ToDo list

- [x] Find a solution to parse List Tag
- [ ] Find a better solution to parse List Tag
- [x] Add a ability to generate NBT data from a NBTag object
- [ ] Add a ability to change tag's value with a string
- [ ] Add a ability to export NBTag as JSON
