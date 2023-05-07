//
//  SpirographView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 06.05.2023.
//

import SwiftUI

struct SpirographView: View {
    @State private var innerRadius = 125.0
    @State private var outerRadius = 75.0
    @State private var distance = 25.0
    @State private var amount = 1.0
    @State private var hue = 0.6
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Spirograph(innerRadius: Int(innerRadius), outerRadius: Int(outerRadius), distance: Int(distance), amount: amount)
                .stroke(Color(hue: hue, saturation: 1, brightness: 1))
                .frame(width: 300, height: 300)
                .onTapGesture {
                    let a = amount
                    amount = 0
                    
                    withAnimation(.linear(duration: 5)) {
                        amount = a
                    }
                }
            
            Spacer()
            
            Group {
                Text("Inner Radius: \(Int(innerRadius))")
                Slider(value: $innerRadius, in: 10...150, step: 1)
                    .padding([.horizontal, .bottom])
                
                Text("Outer Radius: \(Int(outerRadius))")
                Slider(value: $outerRadius, in: 10...150, step: 1)
                    .padding([.horizontal, .bottom])
                
                Text("Distance: \(Int(distance))")
                Slider(value: $distance, in: 10...150, step: 1)
                    .padding([.horizontal, .bottom])
                
                Text("Amount: \(amount, format: .number.precision(.fractionLength(2)))")
                Slider(value: $amount)
                    .padding([.horizontal, .bottom])
                
                Text("Color")
                Slider(value: $hue)
                    .padding(.horizontal)
            }
        }
    }
}

struct Spirograph_Previews: PreviewProvider {
    static var previews: some View {
        SpirographView()
    }
}
