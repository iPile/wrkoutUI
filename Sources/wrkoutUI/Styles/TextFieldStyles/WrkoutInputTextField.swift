//
//  WrkoutInputTextField.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-05-28.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

struct WrkoutInputTextField: ViewModifier {
    var font: Font = .wrkoutSmall
    
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .font(font)
            .background(Color.clear)
            .foregroundColor(.wrkoutOrange)
            .multilineTextAlignment(.leading)
    }
}
