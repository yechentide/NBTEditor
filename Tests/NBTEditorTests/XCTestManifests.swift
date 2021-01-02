import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NBTEditorTests.allTests),
        testCase(NBTagValueTests.allTests),
    ]
}
#endif
