//
//  ColorCyclingRectangle.swift
//  Drawing
//
//  Created by Mykola Zakluka on 07.05.2023.
//

import SwiftUI

struct ColorCyclingRectangle: View {
    var amount = 0.8
    var steps = 100
    
    var body: some View {
        ZStack {
            ForEach(0..<steps, id: \.self) { step in
                Rectangle()
                    .inset(by: Double(step))
                    .strokeBorder(
                        LinearGradient(gradient: Gradient(colors: [
                            color(for: step, brightness: 1),
                            color(for: step, brightness: 0.5)
                        ]),
                           startPoint: .top,
                           endPoint: .bottom
                        ),
                        lineWidth: 2
                    )
            }
        }
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct ColorCyclingRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCyclingRectangle(amount: 0.2)
            .frame(width: 300, height: 300)
    }
}
