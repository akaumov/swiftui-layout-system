//
//  LayouBasics.swift
//  SwiftUILayoutTest
//
//  Created by Azat Kaiumov on 27.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

// The parent proposes to the child (the text element),
// all available space (entire safe area in this case)
// The text takes only the space which it needs
// The parent aligns the text by default in the center
struct LayouBasics: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .border(Color.red, width: 5)
    }
}

struct LayouBasics_Previews: PreviewProvider {
    static var previews: some View {
        LayouBasics()
    }
}
