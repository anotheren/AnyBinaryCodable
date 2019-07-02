import XCTest
@testable import AnyByte

final class AnyByteTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AnyByte().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
