//
//  LinePath.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-06-22.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import Foundation
import SwiftUI

public struct LineView: View {
    public let color: Color 
    
    public init(color: Color = .wrkoutDarkGray) {
        self.color = color
    }
    
    public var body: some View {
            ZStack {
                LinePath()
                    .stroke(self.color)
                    .cornerRadius(8)
            }
            .frame(height: 2)
    }
}

public struct LinePath: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let leftPoint = CGPoint(x: rect.minX, y: 0)
        let rightPoint = CGPoint(x: rect.maxX, y: 0)
        
        path.move(to: leftPoint)
        path.addLine(to: rightPoint)
        
        return path
    }
}
