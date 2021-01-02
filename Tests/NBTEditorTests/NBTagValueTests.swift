import XCTest
@testable import NBTEditor

class NBTagValueTests: XCTestCase {
    
    static var allTests = [
        ("testTagValueByte", testTagValueByte),
        ("testTagValueShort", testTagValueShort),
        ("testTagValueInt", testTagValueInt),
        ("testTagValueLong", testTagValueLong),
        ("testTagValueFloat", testTagValueFloat),
        ("testTagValueDouble", testTagValueDouble),
        ("testTagValueByteArray", testTagValueByteArray),
        ("testTagValueString", testTagValueString),
        ("testTagValueList", testTagValueList),
        ("testTagValueIntArray", testTagValueIntArray),
        ("testTagValueLongArray", testTagValueLongArray)
    ]
    
    func testTagValueByte() {
        do{
            for number in [Int8.min, Int8.min/2, 0, Int8.max/2, Int8.max] {
                // let data = Data(  [UInt8(num)]  )
                var num = number
                let data = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
                var it = data.makeIterator()
                let n = try Int8(iterator: &it)
                XCTAssertEqual(number, n)
            }
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueShort() {
        do{
            for number in [Int16.min, Int16.min/2, 0, Int16.max/2, Int16.max] {
                // let data = Data(  [UInt8(num)]  )
                var num = number
                let data = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
                var it = data.makeIterator()
                let n = try Int16(iterator: &it)
                XCTAssertEqual(number, n)
            }
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueInt() {
        do{
            for number in [Int32.min, Int32.min/2, 0, Int32.max/2, Int32.max] {
                var num = number
                let data = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
                var it = data.makeIterator()
                let n = try Int32(iterator: &it)
                XCTAssertEqual(number, n)
            }
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueLong() {
        do{
            for number in [Int64.min, Int64.min/2, 0, Int64.max/2, Int64.max] {
                // let data = Data(  [UInt8(num)]  )
                var num = number
                let data = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
                var it = data.makeIterator()
                let n = try Int64(iterator: &it)
                XCTAssertEqual(number, n)
            }
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueFloat() {
        do {
            var initialFloatValue: Float32 = 1.23
            let data = Data(bytes: &initialFloatValue, count: 4)
            var it = data.makeIterator()
            let resultFloatValue = try Float32(iterator: &it)
            XCTAssertEqual(initialFloatValue, resultFloatValue)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueDouble() {
        do {
            var initialDoubleValue: Float64 = 3.131349
            let data = Data(bytes: &initialDoubleValue, count: 8)
            var it = data.makeIterator()
            let resultdoubleValue = try Float64(iterator: &it)
            XCTAssertEqual(initialDoubleValue, resultdoubleValue)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueByteArray() {
        do {
            let data = Data([0x0A, 0x00, 0x00, 0x00,
                             0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A])
            var it = data.makeIterator()
            let result = try [Int8](iterator: &it)
            XCTAssertEqual([1,2,3,4,5,6,7,8,9,10], result)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueString() {
        do {
            var data = Data([0x0A, 0x00, 0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79])
            var it = data.makeIterator()
            var result = try String(iterator: &it)
            XCTAssertEqual("Difficulty", result)
            
            data = Data([0x0F, 0x00, 0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73])
            it = data.makeIterator()
            result = try String(iterator: &it)
            XCTAssertEqual("FlatWorldLayers", result)
            
            data = Data([0x0D, 0x00, 0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65])
            it = data.makeIterator()
            result = try String(iterator: &it)
            XCTAssertEqual("ForceGameType", result)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueList() {
        do {
            let data = Data([0x03, 0x00, 0x00, 0x00,
                             0x0A, 0x00, 0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79,
                             0x0F, 0x00, 0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73,
                             0x0D, 0x00, 0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65])
            var it = data.makeIterator()
            let result = try [String](iterator: &it)
            //XCTAssertEqual(["Difficulty", "FlatWorldLayers", "ForceGameType"], result)
            print(result)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueIntArray() {
        do {
            let data = Data([0x03, 0x00, 0x00, 0x00,
                             0x01, 0x00, 0x00, 0x00,
                             0x02, 0x00, 0x00, 0x00,
                             0x03, 0x00, 0x00, 0x00])
            var it = data.makeIterator()
            let result = try [Int32](iterator: &it)
            XCTAssertEqual([1,2,3], result)
        } catch {
            XCTFail()
        }
    }
    
    func testTagValueLongArray() {
        do {
            let data = Data([0x03, 0x00, 0x00, 0x00,
                             0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                             0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                             0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,])
            var it = data.makeIterator()
            let result = try [Int64](iterator: &it)
            XCTAssertEqual([1,2,3], result)
        } catch {
            XCTFail()
        }
    }
    
}
