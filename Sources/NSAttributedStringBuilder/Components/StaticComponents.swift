import Foundation

public typealias Empty = NSAttributedString.Empty
public typealias Space = NSAttributedString.Space
public typealias Break = NSAttributedString.Break
public typealias Tab = NSAttributedString.Tab

extension NSAttributedString {
    public struct Empty: Component {
        public let string: String = ""
        public let attributes: Attributes = [:]
        public init() { }
    }

    public struct Space: Component {
        public let string: String = " "
        public let attributes: Attributes = [:]
        public init() { }
    }

    public struct Break: Component {
        public let string: String = "\n"
        public let attributes: Attributes = [:]
        public init() { }
    }
    
    public struct Tab: Component {
        public let string: String = "\t"
        public let attributes: Attributes = [:]
        public init() { }
    }
}
