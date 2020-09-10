#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public typealias Content = NSAttributedString.Content

extension NSAttributedString {
    public struct Content: Component {
        public let string: String
        public let attributes: Attributes

        public init(_ string: String, attributes: Attributes = [:]) {
            self.string = string
            self.attributes = attributes
        }
    }
}
