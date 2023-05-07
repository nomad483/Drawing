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
            ArrowView()
                .tabItem {
                    Image(systemName: "arrow.up")
                }
            
            ColorCyclingRectangleView()
                .tabItem {
                    Image(systemName: "square.inset.filled")
                }
            
            FlowerView()
                .tabItem {
                    Image(systemName: "circle.hexagonpath")
                }
            
            ColorCyclingCircleView()
                .tabItem {
                    Image(systemName: "circle.circle")
                }
            
            TrapezoidView()
                .tabItem {
                    Image(systemName: "square")
                }
            
            SpirographView()
                .tabItem {
                    Image(systemName: "seal")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
