import XCTest
@testable import PolywrapClient

final class PolywrapClientTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let uri = "wrap://http/https://raw.githubusercontent.com/polywrap/wasm-test-harness/v0.2.1/wrappers/subinvoke/00-subinvoke/implementations/as"
        let method = "add"
        let args = "{\"a\":1,\"b\":1}"
        XCTAssertEqual(PolywrapClient.invoke(uri: uri, method: method, args: args), [2]);
    }
}
