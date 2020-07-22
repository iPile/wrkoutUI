//
//  FilledButtonStyle.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-04-04.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public struct FilledButtonStyle: ButtonStyle {
    public let backgroundColor: Color
    public let textColor: Color
    public var disabled: Bool
    
    public init(backgroundColor: Color,
                textColor: Color,
                disabled: Bool) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.disabled = disabled
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .font(.wrkoutButton())
            .padding(.vertical, 12)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(16)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .shadow(color: .black, radius: 1, x: 1, y: 1)
            .disabled(disabled)
            .padding(.bottom, 12)
    }
}
