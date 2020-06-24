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
    
    public init(cornerRadius: CGFloat = 24,
                opacity: Double = 1) {
        self.cornerRadius = cornerRadius
        self.opacity = opacity
    }
    
    public var body: some View {
        ZStack {
            Color.white
                .opacity(opacity)
                .cornerRadius(self.cornerRadius)
                .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.wrkoutDarkGray, lineWidth: 0.5))
        }
    }
}

