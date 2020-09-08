import XCTest
@testable import NSAttributedStringBuilder

final class ComponentBasicModifierTests: XCTestCase {
    func testModifyWithSingleAttribute() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.foregroundColor: ColorAlias.yellow])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .attribute(.foregroundColor, value: ColorAlias.yellow)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyBackgroundColor() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.backgroundColor: ColorAlias.red])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .backgroundColor(.red)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyBaselineOffset() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.baselineOffset: 10])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .baselineOffset(10)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyFontAndColor() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "")
            mas.append(NSAttributedString(string: "Hello world",
                                          attributes: [
                                            .font: FontAlias.systemFont(ofSize: 20),
                                            .foregroundColor: ColorAlias.yellow]))
            mas.append(NSAttributedString(string: "\n"))
            mas.append(NSAttributedString(string: "Second line",
                                          attributes: [.font: FontAlias.systemFont(ofSize: 24)]))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .font(.systemFont(ofSize: 20))
                .foregroundColor(.yellow)
            Break()
            Content("Second line")
                .font(.systemFont(ofSize: 24))
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyExpansion() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.expansion: 1])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .expansion(1)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyKerning() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.kern: 3])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .kerning(3)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyLigature() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.ligature: 0])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .ligature(.none)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyObliqueness() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.obliqueness: 0.5])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .obliqueness(0.5)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyShadow() {
        let testData: NSAttributedString = {
            let shadow = NSShadow()
            shadow.shadowColor = ColorAlias.black
            shadow.shadowBlurRadius = 10
            shadow.shadowOffset = .init(width: 4, height: 4)

            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.shadow: shadow])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .shadow(color: .black, radius: 10, x: 4, y: 4)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyStrikethrough() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.strikethroughStyle: NSUnderlineStyle.double.rawValue])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .strikethrough(style: .double)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyStrikethroughWithColor() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.strikethroughStyle: NSUnderlineStyle.patternDash.rawValue,
                                                             .strikethroughColor: ColorAlias.black])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .strikethrough(style: .patternDash, color: .black)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyStroke() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.strokeWidth: -2])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .stroke(width: -2)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyStrokeWithColor() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.strokeWidth: -2,
                                                             .strokeColor: ColorAlias.green])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .stroke(width: -2, color: .green)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyTextEffect() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.textEffect: NSAttributedString.TextEffectStyle.letterpressStyle])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .textEffect(.letterpressStyle)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyUnderline() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.underlineStyle: NSUnderlineStyle.patternDashDotDot.rawValue])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .underline(.patternDashDotDot)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyUnderlineWithColor() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.underlineStyle: NSUnderlineStyle.patternDashDotDot.rawValue,
                                                             .underlineColor: ColorAlias.cyan])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .underline(.patternDashDotDot, color: .cyan)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    func testModifyWritingDirection() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.writingDirection: NSWritingDirection.rightToLeft.rawValue])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .writingDirection(.rightToLeft)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }

    #if canImport(AppKit)
    func testModifyVertical() {
        let testData: NSAttributedString = {
            let mas = NSMutableAttributedString(string: "Hello world",
                                                attributes: [.verticalGlyphForm: 1])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .vertical()
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }
    #endif

    func testChaining() {
        let testData: NSAttributedString = {
            let shadow = NSShadow()
            shadow.shadowColor = ColorAlias.black
            shadow.shadowBlurRadius = 10
            shadow.shadowOffset = .init(width: 4, height: 4)

            let mas = NSMutableAttributedString(
                string: "Hello world",
                attributes: [.backgroundColor: ColorAlias.red,
                             .baselineOffset: 10,
                             .font: FontAlias.systemFont(ofSize: 20),
                             .foregroundColor: ColorAlias.yellow,
                             .expansion: 1,
                             .kern: 3,
                             .ligature: 0,
                             .obliqueness: 0.5,
                             .shadow: shadow,
                             .strikethroughStyle: NSUnderlineStyle.patternDash.rawValue,
                             .strikethroughColor: ColorAlias.black,
                             .strokeWidth: -2,
                             .strokeColor: ColorAlias.green,
                             .textEffect: NSAttributedString.TextEffectStyle.letterpressStyle,
                             .underlineStyle: NSUnderlineStyle.patternDashDotDot.rawValue,
                             .underlineColor: ColorAlias.cyan,
                             .writingDirection: NSWritingDirection.rightToLeft.rawValue
            ])
            mas.append(NSAttributedString(string: " with Swift"))
            return mas
        }()

        let sut = NSAttributedString {
            Content("Hello world")
                .backgroundColor(.red)
                .baselineOffset(10)
                .font(.systemFont(ofSize: 20))
                .foregroundColor(.yellow)
                .expansion(1)
                .kerning(3)
                .ligature(.none)
                .obliqueness(0.5)
                .shadow(color: .black, radius: 10, x: 4, y: 4)
                .strikethrough(style: .patternDash, color: .black)
                .stroke(width: -2, color: .green)
                .textEffect(.letterpressStyle)
                .underline(.patternDashDotDot, color: .cyan)
                .writingDirection(.rightToLeft)
            Content(" with Swift")
        }

        XCTAssertTrue(sut.isEqual(testData))
    }
}
