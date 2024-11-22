# SwiftGIFView

**SwiftGIFView** is a lightweight Swift package for displaying animated GIFs in SwiftUI applications. This package allows you to easily integrate GIFs into your app, using `UIViewRepresentable` to bridge UIKit and SwiftUI seamlessly.  

### Features
- **Easy Integration**: Display animated GIFs in SwiftUI with minimal setup.
- **Customizable**: Customize the frame and display properties of the GIF.
- **Simple API**: Use the `GIFView` component to integrate GIFs with just a few lines of code.

 ### Installation with Swift Package Manager

    https://github.com/Lophiester/SwiftGIFView

1. Open your project in Xcode.
2. Go to **File** -> **Add Packages**.
3. In the **Add Package Dependency** dialog, enter the URL of the repository:  
   `https://github.com/Lophiester/SwiftGIFView`  
   (Replace this with the actual URL of the repository).
4. Select the version or branch you want to add to your project.
5. Click **Add Package**.

After that, you can import `SwiftGIFView` into your Swift files and start using it as shown in the usage example above.

### Usage

To get started, simply add `SwiftGIFView` to your project using Swift Package Manager, then use the `GIFView` component in your SwiftUI views.

Here’s a simple example of how to display a GIF:

```swift
import SwiftUI
import SwiftGIFView

struct ContentView: View {
    var body: some View {
        GIFView(gifName: "example")  // Replace "example" with your GIF name
            .frame(width: 200, height: 200)
    }
}
```

