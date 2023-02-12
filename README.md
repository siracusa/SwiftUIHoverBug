# Sample Project for FB11988707

SwiftUI's [`.onHover`](https://developer.apple.com/documentation/swiftui/spacer/onhover(perform:)) View method fails sporadically when applied to a view that does not cover the entire containing window and that window has a “clear” background color. This sample project demonstrates the bug, which has been filed with Apple as FB11988707.

The workaround is to make the background color anything that is not “clear.” Search for “WORKAROUND” in the `SwiftUIView.swift` file in this project to see the (commented-out) code for the workaround. Note that a color like this will also work:

```swift
Color(nsColor: NSColor(deviceWhite: 1, alpha: 0.001))
```

while still appearing “clear” in most contexts:
