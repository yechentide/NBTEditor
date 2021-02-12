import XCTest
@testable import NBTEditor

final class NBTagValueTests: XCTestCase {
    
    static var allTests = [
        // Integer number
        ("testByteTagValueInitializer",         testByteTagValueInitializer),
        ("testByteTagValueNBTDataOutput",       testByteTagValueNBTDataOutput),
        ("testShortTagValueInitializer",        testShortTagValueInitializer),
        ("testShortTagValueNBTDataOutput",      testShortTagValueNBTDataOutput),
        ("testIntTagValueInitializer",          testIntTagValueInitializer),
        ("testIntTagValueNBTDataOutput",        testIntTagValueNBTDataOutput),
        ("testLongTagValueInitializer",         testLongTagValueInitializer),
        ("testLongTagValueNBTDataOutput",       testLongTagValueNBTDataOutput),
        
        // Float number
        ("testFloatTagValueInitializer",        testFloatTagValueInitializer),
        ("testFloatTagValueNBTDataOutput",      testFloatTagValueNBTDataOutput),
        ("testDoubleTagValueInitializer",       testDoubleTagValueInitializer),
        ("testDoubleTagValueNBTDataOutput",     testDoubleTagValueNBTDataOutput),
        
        // String
        ("testStringTagValueInitializer",       testStringTagValueInitializer),
        ("testStringTagValueNBTDataOutput",     testStringTagValueNBTDataOutput),
        
        // Array
        ("testByteArrayTagValueInitializer",    testByteArrayTagValueInitializer),
        ("testByteArrayTagValueNBTDataOutput",  testByteArrayTagValueNBTDataOutput),
        ("testListTagValueInitializer",         testListTagValueInitializer),
        ("testListTagValueNBTDataOutput",       testListTagValueNBTDataOutput),
        ("testIntArrayTagValueInitializer",     testIntArrayTagValueInitializer),
        ("testIntArrayTagValueNBTDataOutput",   testIntArrayTagValueNBTDataOutput),
        ("testLongArrayTagValueInitializer",    testLongArrayTagValueInitializer),
        ("testLongArrayTagValueNBTDataOutput",  testLongArrayTagValueNBTDataOutput)
    ]
}

// Integer number
extension NBTagValueTests {
    
    
    func testByteTagValueInitializer() {
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
    func testByteTagValueNBTDataOutput() {
        for number in [Int8.min, Int8.min/2, 0, Int8.max/2, Int8.max] {
            var num = number
            let data01 = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
            let data02 = number.nbtData
            XCTAssertEqual(data01, data02)
        }
    }
    
    
    func testShortTagValueInitializer() {
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
    func testShortTagValueNBTDataOutput() {
        for number in [Int16.min, Int16.min/2, 0, Int16.max/2, Int16.max] {
            var num = number
            let data01 = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
            let data02 = number.nbtData
            XCTAssertEqual(data01, data02)
        }
    }
    
    
    func testIntTagValueInitializer() {
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
    func testIntTagValueNBTDataOutput() {
        for number in [Int32.min, Int32.min/2, 0, Int32.max/2, Int32.max] {
            var num = number
            let data01 = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
            let data02 = number.nbtData
            XCTAssertEqual(data01, data02)
        }
    }
    
    
    func testLongTagValueInitializer() {
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
    func testLongTagValueNBTDataOutput() {
        for number in [Int64.min, Int64.min/2, 0, Int64.max/2, Int64.max] {
            var num = number
            let data01 = Data(bytes: &num, count: MemoryLayout.size(ofValue: num))
            let data02 = number.nbtData
            XCTAssertEqual(data01, data02)
        }
    }
    
    
}

// Float number
extension NBTagValueTests {
    
    
    func testFloatTagValueInitializer() {
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
    func testFloatTagValueNBTDataOutput() {
        var num: Float32 = 1.23
        let data01 = Data(bytes: &num, count: 4)
        let data02 = num.nbtData
        XCTAssertEqual(data01, data02)
    }
    
    
    func testDoubleTagValueInitializer() {
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
    func testDoubleTagValueNBTDataOutput() {
        var num: Float64 = 3.131349
        let data01 = Data(bytes: &num, count: 8)
        let data02 = num.nbtData
        XCTAssertEqual(data01, data02)
    }
    
    
}

// String
extension NBTagValueTests {
    
    
    func testStringTagValueInitializer() {
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
    func testStringTagValueNBTDataOutput() {
        var data = Data([0x0A, 0x00, 0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79])
        XCTAssertEqual("Difficulty".nbtData, data)
        
        data = Data([0x0F, 0x00, 0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73])
        XCTAssertEqual("FlatWorldLayers".nbtData, data)
        
        data = Data([0x0D, 0x00, 0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65])
        XCTAssertEqual("ForceGameType".nbtData, data)
    }
    
    
}





// Array
extension NBTagValueTests {
    
    
    func testByteArrayTagValueInitializer() {
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
    func testByteArrayTagValueNBTDataOutput() {
        let array: [Int8] = [1,2,3,4,5,6,7,8,9,10]
        let data = Data([0x0A, 0x00, 0x00, 0x00,
                         0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A])
        XCTAssertEqual(data, array.nbtData)
    }
    
    
    func testListTagValueInitializer() {
        do {
            let data = Data([0x03, 0x00, 0x00, 0x00,
                             0x0A, 0x00, 0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79,
                             0x0F, 0x00, 0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73,
                             0x0D, 0x00, 0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65])
            var it = data.makeIterator()
            let result = try [String](iterator: &it)
            print(result)
            XCTAssertEqual(["Difficulty", "FlatWorldLayers", "ForceGameType"], result)
        } catch {
            XCTFail()
        }
    }
    func testListTagValueNBTDataOutput() {
        let array = ["Difficulty", "FlatWorldLayers", "ForceGameType"]
        let data = Data([0x03, 0x00, 0x00, 0x00,
                         0x0A, 0x00, 0x44, 0x69, 0x66, 0x66, 0x69, 0x63, 0x75, 0x6C, 0x74, 0x79,
                         0x0F, 0x00, 0x46, 0x6C, 0x61, 0x74, 0x57, 0x6F, 0x72, 0x6C, 0x64, 0x4C, 0x61, 0x79, 0x65, 0x72, 0x73,
                         0x0D, 0x00, 0x46, 0x6F, 0x72, 0x63, 0x65, 0x47, 0x61, 0x6D, 0x65, 0x54, 0x79, 0x70, 0x65])
        XCTAssertEqual(data, array.nbtData)
    }
    
    
    func testIntArrayTagValueInitializer() {
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
    func testIntArrayTagValueNBTDataOutput() {
        let array: [Int32] = [1,2,3]
        let data = Data([0x03, 0x00, 0x00, 0x00,
                         0x01, 0x00, 0x00, 0x00,
                         0x02, 0x00, 0x00, 0x00,
                         0x03, 0x00, 0x00, 0x00])
        XCTAssertEqual(data, array.nbtData)
    }
    
    
    func testLongArrayTagValueInitializer() {
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
    func testLongArrayTagValueNBTDataOutput() {
        let array: [Int64] = [1,2,3]
        let data = Data([0x03, 0x00, 0x00, 0x00,
                         0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                         0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                         0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,])
        XCTAssertEqual(data, array.nbtData)
    }
    
    
}
