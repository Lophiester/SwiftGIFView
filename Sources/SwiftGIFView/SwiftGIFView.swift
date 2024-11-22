
import SwiftUI
import UIKit

public struct GIFView: UIViewRepresentable {
    let gifName: String

    public init(gifName: String) {
        self.gifName = gifName
    }

    public func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let imageView = UIImageView()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true

        if let path = Bundle.main.path(forResource: gifName, ofType: "gif"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            let gif = UIImage.gif(data: data)
            imageView.image = gif
        }

        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        return view
    }

    public func updateUIView(_ uiView: UIView, context: Context) {}
}

// Extension for loading GIFs as UIImages
extension UIImage {
    static func gif(data: Data) -> UIImage? {
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else { return nil }
        var images: [UIImage] = []
        let count = CGImageSourceGetCount(source)

        for i in 0..<count {
            if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                images.append(UIImage(cgImage: cgImage))
            }
        }

        return UIImage.animatedImage(with: images, duration: Double(count) / 30.0)
    }
}
