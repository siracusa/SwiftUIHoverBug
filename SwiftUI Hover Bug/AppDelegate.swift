//
//  AppDelegate.swift
//  SwiftUI Hover Bug
//
//  Created by John Siracusa on 2/12/23.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
    var window : NSWindow!
    var view : SwiftUIView!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.view = SwiftUIView()
        
        self.window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 700, height: 700),
            styleMask: [ ],
            backing: .buffered,
            defer: false
        )

        window.backgroundColor = .clear
        window.isOpaque = false
        window.contentView = NSHostingView(rootView: self.view)
        window.level = .floating

        window.center()
        window.orderFront(self)
    }
}
