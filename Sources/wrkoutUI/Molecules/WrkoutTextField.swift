//
//  WrkoutTextField.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-05-30.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public struct WrkoutTextField: View {
    public var placeHolderText: String
    public var textInputBinding: Binding<String>
    public var errorText: String
    public let isSecure: Bool
    
    public init(placeHolderText: String,
                textInputBinding: Binding<String>,
                errorText: String,
                isSecure: Bool = false) {
        self.placeHolderText = placeHolderText
        self.textInputBinding = textInputBinding
        self.errorText = errorText
        self.isSecure = isSecure
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            if isSecure {
                SecureField(placeHolderText, text: textInputBinding)
                    .modifier(WrkoutInputTextField())
            } else {
                TextField(placeHolderText, text: textInputBinding)
                    .modifier(WrkoutInputTextField())
            }
            
            Text(errorText)
                .font(.wrkoutExtraSmall)
                .lineLimit(2)
                .foregroundColor(.red)
        }
    }
}

