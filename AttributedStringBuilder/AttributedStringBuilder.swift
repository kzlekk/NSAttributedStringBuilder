#if canImport(UIKit)
import UIKit
public typealias FontAlias = UIFont
public typealias ColorAlias = UIColor
#elseif canImport(AppKit)
import AppKit
public typealias FontAlias = NSFont
public typealias ColorAlias = NSColor
#endif

public typealias Attributes = [NSAttributedString.Key: Any]

@_functionBuilder
public struct AttributedStringBuilder {
    public static func buildBlock(_ components: Component...) -> NSAttributedString {
        let mas = NSMutableAttributedString(string: "")
        for component in components {
            mas.append(component.attributedString)
        }
        return mas
    }
}

extension NSAttributedString {
    public convenience init(@AttributedStringBuilder _ builder: () -> NSAttributedString) {
        self.init(attributedString: builder())
    }
}
