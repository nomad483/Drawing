//
//  FlowerView.swift
//  Drawing
//
//  Created by Mykola Zakluka on 05.05.2023.
//

import SwiftUI

struct FlowerView: View {
    @State var petalOffset = -20.0
    @State var petalWidth = 100.0
    
    var body: some View {
        VStack {
            Flover(petalOffset: petalOffset, petalWidth: petalWidth)
                .stroke(.red, lineWidth: 1)
            
            Text("Offset")
            Slider(value: $petalOffset, in: -40...40)
            Text("Width")
            Slider(value: $petalWidth, in: 0...100)
        }
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView()
    }
}
