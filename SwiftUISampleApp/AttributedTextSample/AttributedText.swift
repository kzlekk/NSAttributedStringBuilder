import SwiftUI
import NSAttributedStringBuilder

/// A custom view to use NSAttributedString in SwiftUI
final public class AttributedText: UIViewRepresentable {
    var attributedString: NSAttributedString

    private init(_ attributedString: NSAttributedString) {
        self.attributedString = attributedString
    }

    public convenience init(@NSAttributedStringBuilder _ builder: () -> NSAttributedString) {
        self.init(builder())
    }

    public func makeUIView(context: UIViewRepresentableContext<AttributedText>) -> UILabel {
        let label = UILabel(frame: .zero)
        label.attributedText = self.attributedString
        label.backgroundColor = .clear
        label.textAlignment = .natural
        label.numberOfLines = 0
        return label
    }

    public func updateUIView(_ textView: UILabel, context: UIViewRepresentableContext<AttributedText>) {
        textView.attributedText = self.attributedString
    }
}

#if DEBUG
struct AttributedText_Previews : PreviewProvider {
    static var previews: some View {
        ScrollView {
        AttributedText {
            Tab()
            ImageAttachment(UIImage(named: "Swift_logo_color_rgb.jpg")!, size: CGSize(width: 90, height: 90))
            Break()
            Content("Hello SwiftUI")
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
                .underline(.patternDashDotDot, color: .cyan)
                .alignment(.center)
                .paragraphSpacing(10, before: 60)
            Break()
            Content("With fun!")
                .paragraphSpacing(10, before: 60)
                .alignment(.center)
            Break()
            Content("Scroll down...")
                .paragraphSpacing(10, before: 60)
                .alignment(.center)
            Break()
            Content("End!")
                .backgroundColor(.red)
                .paragraphSpacing(10, before: 360)
                .alignment(.center)
        }
        }
    }
}
#endif
