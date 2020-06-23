//
//  LinePath.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-06-22.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import Foundation
import SwiftUI

struct LineView: View {
    let color: Color = .wrkoutDarkGray
    
    var body: some View {
            ZStack {
                LinePath()
                    .stroke(self.color)
                    .cornerRadius(8)
            }
            .frame(height: 2)
    }
}

struct LinePath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let leftPoint = CGPoint(x: rect.minX, y: 0)
        let rightPoint = CGPoint(x: rect.maxX, y: 0)
        
        path.move(to: leftPoint)
        path.addLine(to: rightPoint)
        
        return path
    }
}
