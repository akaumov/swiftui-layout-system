//
//  ContentView.swift
//  SwiftUILayoutTest
//
//  Created by Azat Kaiumov on 26.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("sakura")
        .resizable()
            .frame(width: 200, height: 200)
            .border(Color.pink, width: 3)
            .position(x: 120, y: 120)
        .frame(width: 300, height: 300)
            .border(Color.purple, width: 20)
            .shadow(radius: 10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
