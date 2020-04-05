import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ByteCodableTests.allTests),
        testCase(UIn24Tests.allTests),
    ]
}
#endif
