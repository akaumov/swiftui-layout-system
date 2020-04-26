//
//  Frame.swift
//  SwiftUILayoutTest
//
//  Created by Azat Kaiumov on 27.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI


// As you can see here when we call the frame modifier
// SwiftUI wraps the image in the separate view
// To resize the image to the frame bounds we should call
// "resizable" modifier

struct ImageInsideFrame: View {
    var body: some View {
        Image("sakura")
        .border(Color.red, width: 8)
        .frame(width: 200, height: 200)
            .border(Color.blue, width: 5)
    }
}

struct ResizableImageInsideFrame: View {
    var body: some View {
        Image("sakura")
        .resizable()
        .border(Color.red, width: 8)
        .frame(width: 200, height: 200)
        .border(Color.blue, width: 5)
    }
}

struct ImageInsideFrameWithAlignment: View {
    var body: some View {
        Image("sakura")
        .border(Color.red, width: 8)
            .frame(width: 200, height: 200, alignment: .bottomTrailing)
            .border(Color.blue, width: 5)
    }
}


struct ImageInsideFrameWithOffset: View {
    var body: some View {
        Image("sakura")
        .offset(x: 100, y: 100)
        .border(Color.red, width: 8)
            .frame(width: 200, height: 200)
            .border(Color.blue, width: 5)
    }
}

// Sets center of the view to the specified position
struct ImageInsideFrameWithPosition: View {
    var body: some View {
        Image("sakura")
        .position(x: 30, y: 30)
        .border(Color.red, width: 8)
            .frame(width: 200, height: 200)
            .border(Color.blue, width: 5)
    }
}


struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImageInsideFrame()
                .previewDisplayName("Resizable = false")
            ResizableImageInsideFrame()
                .previewDisplayName("Resizable = true")
            ImageInsideFrameWithAlignment()
                .previewDisplayName("Alignment = bottomTrailing")
            ImageInsideFrameWithOffset()
            .previewDisplayName("With offset")
            ImageInsideFrameWithPosition()
            .previewDisplayName("With position")
        }
    }
}
