//
//  ColorCyclingCircleView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 05.05.2023.
//

import SwiftUI

struct ColorCyclingCircleView: View {
    @State var colorCycle = 0.0
    var body: some View {
        VStack {
            ColorCyclingCircle(amount: colorCycle)
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
        }
    }
}

struct ColorCyclingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCyclingCircleView()
    }
}
