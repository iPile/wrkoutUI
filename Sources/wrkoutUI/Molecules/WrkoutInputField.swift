//
//  WrkoutInputField.swift
//  wrkoutUI
//
//  Created by Ignas Pileckas on 2020-07-22.
//

import Foundation
import SwiftUI

public struct WrkoutInputField: View {
    public var placeHolderText: String
    public var textInputBinding: Binding<String>
    public var font: Font
    
    public init(placeHolderText: String,
                textInputBinding: Binding<String>,
                font: Font) {
        self.placeHolderText = placeHolderText
        self.textInputBinding = textInputBinding
        self.font = font
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            TextField(placeHolderText, text: textInputBinding)
                .modifier(WrkoutInputTextFieldModifier(font: font))
        }
    }
}
