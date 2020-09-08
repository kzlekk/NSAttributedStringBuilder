import XCTest
@testable import NSAttributedStringBuilder

#if canImport(UIKit)
import UIKit
import Foundation
#elseif canImport(AppKit)
import AppKit
#endif

final class ComponentParagraphSylteModifierTests: XCTestCase {
    func testSetEmptyParagraphStyle() {
        let testData: NSAttributedString = {
            let ps = NSParagraphStyle()
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: ps])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let ps = NSParagraphStyle()

        let sut = NSAttributedString {
            Content("Hello world")
                .paragraphStyle(ps)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyMutableParagraphStyle() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .right

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let mps = NSMutableParagraphStyle()
        mps.alignment = .right

        let sut = NSAttributedString {
            Content("Hello world")
                .paragraphStyle(mps)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyAlignment() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .right

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .alignment(.right)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyFirstHeadIndent() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.firstLineHeadIndent = 16

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .firstLineHeadIndent(16)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyHeadIndent() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.headIndent = 13

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .headIndent(13)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyTailIndent() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.tailIndent = 19

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .tailIndent(19)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyLinebreakMode() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineBreakMode = .byWordWrapping

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .lineBreakeMode(.byWordWrapping)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyLineHeight() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1
            paragraphStyle.maximumLineHeight = 22
            paragraphStyle.minimumLineHeight = 18

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .lineHeight(multiple: 1, maximum: 22, minimum: 18)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyLineSpacing() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 7

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .lineSpacing(7)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyParagraphSpacing() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.paragraphSpacing = 9.3
            paragraphStyle.paragraphSpacingBefore = 17.2

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .paragraphSpacing(9.3, before: 17.2)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyBaseWritingDirection() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.baseWritingDirection = .rightToLeft

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .baseWritingDirection(.rightToLeft)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyHyphenationFactor() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.hyphenationFactor = 0.3

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .hyphenationFactor(0.3)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    @available(iOS 9.0, tvOS 9.0, watchOS 2.0, OSX 10.11, *)
    func testAllowsDefaultTighteningForTruncation() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.allowsDefaultTighteningForTruncation = true

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .allowsDefaultTighteningForTruncation()
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyTabStops() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 6, options: [:]),
                                       NSTextTab(textAlignment: .right, location: 4, options: [:])]

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .tabsStops([NSTextTab(textAlignment: .left, location: 6, options: [:]),
                            NSTextTab(textAlignment: .right, location: 4, options: [:])])
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    #if canImport(AppKit) && !targetEnvironment(macCatalyst)

    func testModifyTextBlocks() {
        let textBlock = NSTextBlock()
        textBlock.setWidth(30, type: .absoluteValueType, for: .border)

        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.textBlocks = [textBlock]

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .textBlocks([textBlock])
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    @available(OSX 10.13, *)
    func testModifyTextList() {
        let textList = NSTextList(markerFormat: .box, options: 0)

        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.textLists = [textList]

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .textLists([textList])
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyTighteningFactorForTruncation() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.tighteningFactorForTruncation = 0.5

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .tighteningFactorForTruncation(0.5)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyHeaderLevel() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.headerLevel = 2

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .headerLevel(2)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }
    #endif

    @available(iOS 9.0, tvOS 9.0, watchOS 2.0, OSX 10.11, *)
    func testChaining() {
        let testData: NSAttributedString = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .right
            paragraphStyle.firstLineHeadIndent = 16
            paragraphStyle.headIndent = 13
            paragraphStyle.tailIndent = 19
            paragraphStyle.lineBreakMode = .byWordWrapping
            paragraphStyle.lineHeightMultiple = 1
            paragraphStyle.maximumLineHeight = 22
            paragraphStyle.minimumLineHeight = 18
            paragraphStyle.lineSpacing = 7
            paragraphStyle.paragraphSpacing = 9.3
            paragraphStyle.paragraphSpacingBefore = 17.2
            paragraphStyle.baseWritingDirection = .rightToLeft
            paragraphStyle.hyphenationFactor = 0.3
            paragraphStyle.allowsDefaultTighteningForTruncation = true

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: paragraphStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .alignment(.right)
                .firstLineHeadIndent(16)
                .headIndent(13)
                .tailIndent(19)
                .lineBreakeMode(.byWordWrapping)
                .lineHeight(multiple: 1, maximum: 22, minimum: 18)
                .lineSpacing(7)
                .paragraphSpacing(9.3, before: 17.2)
                .baseWritingDirection(.rightToLeft)
                .hyphenationFactor(0.3)
                .allowsDefaultTighteningForTruncation()
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    @available(iOS 9.0, tvOS 9.0, watchOS 2.0, OSX 10.11, *)
    func testRandomChainingOrderEqualness() {
        let sut = NSAttributedString {
            Content("Hello world")
                .alignment(.right)
                .firstLineHeadIndent(16)
                .headIndent(13)
                .tailIndent(19)
                .lineBreakeMode(.byWordWrapping)
                .lineHeight(multiple: 1, maximum: 22, minimum: 18)
                .lineSpacing(7)
                .paragraphSpacing(9.3, before: 17.2)
                .baseWritingDirection(.rightToLeft)
                .hyphenationFactor(0.3)
                .allowsDefaultTighteningForTruncation()
            Content(" with Swift")
        }

        let sut2 = NSAttributedString {
            Content("Hello world")
                .firstLineHeadIndent(16)
                .headIndent(13)
                .alignment(.right)
                .allowsDefaultTighteningForTruncation()
                .tailIndent(19)
                .lineSpacing(7)
                .lineBreakeMode(.byWordWrapping)
                .hyphenationFactor(0.3)
                .lineHeight(multiple: 1, maximum: 22, minimum: 18)
                .paragraphSpacing(9.3, before: 17.2)
                .baseWritingDirection(.rightToLeft)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(sut2))
    }

    func testSetEmptyParagraphStyleThenChaining() {
        let testData: NSAttributedString = {
            let mps = NSMutableParagraphStyle()
            mps.alignment = .justified
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.paragraphStyle: mps])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let ps = NSParagraphStyle()

        let sut = NSAttributedString {
            Content("Hello world")
                .paragraphStyle(ps)
                .alignment(.justified)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }
}
