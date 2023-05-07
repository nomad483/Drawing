//
//  Flower.swift
//  Drawing
//
//  Created by Mykola Zakluka on 05.05.2023.
//

import SwiftUI

struct Flover: Shape {
    var petalOffset = -20.0
    var petalWidth = 100.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for nuumber in stride(from: 0, to: Double.pi * 2, by: Double.pi / 8) {
            let rotation = CGAffineTransform(rotationAngle: nuumber)
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        
        return path
    }
}
