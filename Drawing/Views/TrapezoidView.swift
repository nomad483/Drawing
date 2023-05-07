//
//  TrapezoidView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 07.05.2023.
//

import SwiftUI

struct TrapezoidView: View {
    @State var amount = 50.0
    
    var body: some View {
        VStack {
            Trapezoid(insetAmount: amount)
                .foregroundColor(.red)
                .frame(width: 200, height: 100)
                .onTapGesture {
                    withAnimation {
                        amount = Double.random(in: 10...90)
                    }
                }            
        }
    }
}

struct Trapezoid_Previews: PreviewProvider {
    static var previews: some View {
        TrapezoidView()
    }
}
