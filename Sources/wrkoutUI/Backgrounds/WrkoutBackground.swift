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
    public var color: Color
    
    public init(cornerRadius: CGFloat = 24,
                opacity: Double = 1,
                color: Color = .white) {
        self.cornerRadius = cornerRadius
        self.opacity = opacity
        self.color = color
    }
    
    public var body: some View {
        ZStack {
            color
                .opacity(opacity)
                .cornerRadius(self.cornerRadius)
                .overlay(RoundedRectangle(cornerRadius: cornerRadius).fill(color))
        }
    }
}

