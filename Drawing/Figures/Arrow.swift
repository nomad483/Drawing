//
//  Arrow.swift
//  Drawing
//
//  Created by Mykola Zakluka on 07.05.2023.
//

import SwiftUI

struct Arrow: Shape {
    
    func path(in rect: CGRect) -> Path {
        let offsetX = rect.width * 0.2
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.width / 2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.height / 2))
        path.addLine(to: CGPoint(x: rect.minX + offsetX, y: rect.height / 2))
        path.addLine(to: CGPoint(x: rect.minX + offsetX, y: rect.height))
        path.addLine(to: CGPoint(x: rect.maxX - offsetX, y: rect.height))
        path.addLine(to: CGPoint(x: rect.maxX - offsetX, y: rect.height / 2))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.height / 2))
        path.addLine(to: CGPoint(x: rect.width / 2, y: rect.minY))
        path.closeSubpath()
        
        return path
    }
}
