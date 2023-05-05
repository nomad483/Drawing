//
//  ContentView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FlowerView()
                .tabItem {
                    Image(systemName: "circle.hexagonpath")
                }
            
            ColorCyclingCircleView()
                .tabItem {
                    Image(systemName: "circle.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
