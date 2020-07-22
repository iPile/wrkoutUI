//
//  WrkoutBackground.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-05-20.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public struct WrkoutBackground: View {
    public var cornerRadius: CGFloat
    public var opacity: Double
    public var strokeColor: Color
    
    public init(cornerRadius: CGFloat = 12,
                opacity: Double = 1,
                strokeColor: Color = .wrkoutGray) {
        self.cornerRadius = cornerRadius
        self.opacity = opacity
        self.strokeColor = strokeColor
    }
    
    public var body: some View {
        ZStack {
            Color.white
                .opacity(opacity)
                .cornerRadius(self.cornerRadius)
                .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(strokeColor, lineWidth: 0.5))
        }
    }
}

