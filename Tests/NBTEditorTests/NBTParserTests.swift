import XCTest
@testable import NBTEditor

final class NBTParserTests: XCTestCase {
    
    let parser = NBTParser(data: Data(levelData))
    
    static var allTests = [
        ("testGetHeader", testGetHeader),
    ]
    
    func testGetHeader() {
        do {
            let (version, fileSize) = try parser.getHeader()
            XCTAssertEqual(8, version)
            XCTAssertEqual(2155, fileSize)
        } catch {
            XCTFail()
        }
    }
    
    func testGetTagType() {
        parser.skip(count: 8)
        let type = parser.getTagType()
        XCTAssertEqual(NBTagType.Compound, type)
    }
    
    func testGetTagName() {
        do {
            parser.skip(count: 9)
            let name = try parser.getTagName()
            XCTAssertEqual("", name)
        } catch {
            XCTFail()
        }
    }
    
}
