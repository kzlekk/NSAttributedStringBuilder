import XCTest
@testable import NSAttributedStringBuilder

final class NSAttributedStringBuilderTests: XCTestCase {
    func testInitWithTwoContent() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world")
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testInitWithTextAndLink() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "")
            mas.append(NSAttributedString(string: "Here is a link to ",
                                          attributes: [.foregroundColor: ColorAlias.brown]))
            mas.append(NSAttributedString(string: "Apple",
                                          attributes: [.link: URL(string: "https://www.apple.com")!]))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Here is a link to ")
                .foregroundColor(.brown)
            Link("Apple", url: URL(string: "https://www.apple.com")!)
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    static var allTests = [
        ("testInitWithTextAndLink", testInitWithTextAndLink)
    ]
}
