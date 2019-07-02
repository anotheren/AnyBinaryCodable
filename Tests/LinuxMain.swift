import XCTest

import AnyByteTests

var tests = [XCTestCaseEntry]()
tests += ByteCodableTests.allTests()
tests += UIn24Tests.allTests()
XCTMain(tests)
