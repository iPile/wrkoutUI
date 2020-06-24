//
//  WrkoutTextField.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-05-30.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public struct WrkoutTextField: View {
    var placeHolderText: String
    var textInputBinding: Binding<String>
    var errorText: String
    var isSecure: Bool = false
    
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

