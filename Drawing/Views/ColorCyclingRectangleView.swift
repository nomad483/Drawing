//
//  ColorCyclingRectangleView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 07.05.2023.
//

import SwiftUI

struct ColorCyclingRectangleView: View {
    @State private var colorCycle = 0.0
    
    var body: some View {
        VStack {
            ColorCyclingRectangle(amount: colorCycle)
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
        }
    }
}

struct ColorCyclingRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCyclingRectangleView()
    }
}
