import XCTest
@testable import NBTEditor

final class NBTEditorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NBTEditor().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
