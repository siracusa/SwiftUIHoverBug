//
//  SwiftUIView.swift
//  SwiftUI Hover Bug
//
//  Created by John Siracusa on 2/12/23.
//

import SwiftUI
import Foundation

let windowColor = Color.init(nsColor: .windowBackgroundColor)

struct SwiftUIView : View {
    @State var isHovered : Bool = false
   
    var body: some View {
        Group {
            Group {
                Text("""
                    Drag the pointer in and out of this square repeatedly. \
                    Don‘t move the pointer more than a few dozen points outside \
                    the square each time.

                    Expected results:

                    The square is red when the pointer is inside it, and gray when it is not.

                    Actual results:

                    The square is SOMETIMES red when the pointer is NOT inside it.
                    """
                )
                .padding(20)
            }
            .frame(width: 300, height: 300, alignment: .leading)
            .background(self.isHovered ? .red : windowColor)
            .onHover { isHovering in
                NSLog("IS HOVERING: \(isHovering)")
                self.isHovered = isHovering
            }

        }
        .frame(
            width: 700,
            height: 700,
            alignment: .center
        )
        // WORKAROUND: Setting the background color of the outer group to
        // anything that is not "clear" makes this app work as expected.
        //.background(.blue)
    }
}
