//
//  ArrowView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 07.05.2023.
//

import SwiftUI

struct ArrowView: View {
    @State private var lineWidth = 5.0
    
    var body: some View {
        Arrow()
            .stroke(.red, lineWidth: lineWidth)
            .frame(width: 300, height: 300)
            .padding()
            .onTapGesture {
                withAnimation {
                    lineWidth = Double.random(in: 2...30)
                }
            }
    }
}

struct Arrow_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView()
    }
}
