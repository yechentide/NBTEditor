import XCTest
@testable import NBTEditor

final class NBTEditorTests: XCTestCase {

    static var allTests = [
        ("testDataIteratorExtension", testDataIteratorExtension),
    ]
    
    func testDataIteratorExtension() {
        let keyword = "helloWorld"
        let data = Data( Array(keyword.utf8) )
        var iterator = data.makeIterator()
        let utf8Data = iterator.next(count: keyword.count)
        if let d = utf8Data {
            XCTAssertEqual(keyword, String(data: d, encoding: .utf8)!)
        } else {
            XCTFail()
        }
    }
}
