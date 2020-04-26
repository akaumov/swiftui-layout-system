//
//  Stacks.swift
//  SwiftUILayoutTest
//
//  Created by Azat Kaiumov on 27.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

// By default the VStack aligns children in the center
struct VerticalStackExample: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.headline)
            Text("Subtitle")
                .font(.subheadline)
        }
    }
}

struct VerticalStackExampleWithAlignment: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
                .font(.headline)
            Text("Subtitle")
                .font(.subheadline)
        }
    }
}

struct HorizontalStackExampleWithSpacer: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.headline)
                Text("Subtitle")
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct HorizontalStackExampleWithPadding: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.headline)
                Text("Subtitle")
                    .font(.subheadline)
            }.padding()
            Spacer()
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VerticalStackExample()
                .previewLayout(.fixed(width: 370, height: 70))
                .previewDisplayName("Basic example")
            VerticalStackExampleWithAlignment()
                .previewLayout(.fixed(width: 370, height: 70))
                .previewDisplayName("With alignment")
            HorizontalStackExampleWithSpacer()
                .previewLayout(.fixed(width: 370, height: 70))
                .previewDisplayName("With spacer")
            HorizontalStackExampleWithPadding()
                .previewLayout(.fixed(width: 370, height: 70))
                .previewDisplayName("With padding")
        }
    }
}
