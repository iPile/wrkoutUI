//
//  WrkoutTextField.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-05-30.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public struct WrkoutInputFieldWithError: View {
    public var placeHolderText: String
    public var textInputBinding: Binding<String>
    public var errorText: String
    public let isSecure: Bool
    public let font: Font
    
    public init(placeHolderText: String,
                textInputBinding: Binding<String>,
                errorText: String,
                isSecure: Bool = false,
                font: Font = .wrkoutSmall()) {
        self.placeHolderText = placeHolderText
        self.textInputBinding = textInputBinding
        self.errorText = errorText
        self.isSecure = isSecure
        self.font = font
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            if isSecure {
                SecureField(placeHolderText, text: textInputBinding)
                    .modifier(WrkoutInputTextFieldModifier(font: font))
            } else {
                TextField(placeHolderText, text: textInputBinding)
                    .modifier(WrkoutInputTextFieldModifier())
            }
            
            Text(errorText)
                .font(.wrkoutExtraSmall())
                .lineLimit(2)
                .foregroundColor(.red)
        }
    }
}

