import NSAttributedStringBuilder
import SwiftUI

let image = UIImage(named: "Swift_logo_color_rgb.jpg")!

struct ContentView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Text Title")
                .font(.largeTitle)
            Text("Text Subtitle")
                .font(.headline)
            Text("Text Link")
                .font(.body)
                .underline()
                .foregroundColor(.blue)
            Image(uiImage: image)
                .padding(.bottom)

            // UITextView: UIViewRepresentable 
            AttributedText {
                Tab()
                Content("AttributedText Title")
                    .font(.preferredFont(forTextStyle: .largeTitle))
                Break()
                Content("AttributedText Subtitle")
                    .font(.preferredFont(forTextStyle: .headline))
                Break()
                Link("Attributed Link", url: URL(string: "https://www.apple.com")!)
                    .font(.italicSystemFont(ofSize: 17))
                Break()
                ImageAttachment(image)
            }.accentColor(ColorAlias.red)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
