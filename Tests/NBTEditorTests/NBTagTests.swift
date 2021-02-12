import XCTest
@testable import NBTEditor

final class NBTagTests: XCTestCase {
    
    static var allTests = [
        ("testExportNBT", testExportNBT)
    ]
    
    
    func testExportNBT() {
        do {
            let originData = Data(levelData)
            let parser = NBTParser(data: originData)
            let (version, _) = try parser.getHeader()
            let tag = try parser.getTag()
            
            var data = Data()
            let tagData = tag.exportNBT(exceptionData: nil)
            
            data += version.nbtData
            data += Int32(tagData.count).nbtData
            data += tagData
            
            XCTAssertEqual(originData, data)
            
        } catch {
            print(error)
            XCTFail()
        }
    }
    
}
