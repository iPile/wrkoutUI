//
//  Preview.swift
//  wrkoutUI
//
//  Created by Ignas Pileckas on 2020-06-23.
//

import SwiftUI

// Use this PreviewProvider to test components

struct Preview: View {
    @State var textBinding = ""
    
    @State var scaleFonts: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment:. leading) {
                Text("wrkoutButton")
                    .font(.wrkoutButton)
                Text("wrkoutExtraSmall")
                    .font(.wrkoutExtraSmall)
                Text("wrkoutSmall")
                    .font(.wrkoutSmall)
                Text("wrkoutMedium")
                    .font(.wrkoutMedium)
                Text("wrkoutLarge")
                    .font(.wrkoutLarge)
                Text("wrkoutTitle")
                    .font(.wrkoutTitle)
            }
            .padding(8)
            .background(WrkoutBackground())
            .scaleEffect(scaleFonts ? 1.3 : 1)
            .onTapGesture {
                withAnimation(.springEffect) {
                    self.scaleFonts.toggle()
                }
            }
            LineView()
            HStack {
                Circle()
                    .fill(Color.wrkoutGray)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutDarkGray)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutOcean)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutBlue)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutDarkBlue)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutGreen)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutOrange)
                    .frame(width: 20, height: 20)
                Circle()
                    .fill(Color.wrkoutDarkOrange)
                    .frame(width: 20, height: 20)
            }
            LineView()
            WrkoutTextField(placeHolderText: "This is a wrkout text field",
                            textInputBinding: $textBinding,
                            errorText: "And its placehoder text")
            LineView()
            HStack {
                Button(action: {}) {
                    Text("FilledButtonStyle")
                }
                .buttonStyle(FilledButtonStyle(backgroundColor: .wrkoutOrange,
                                               textColor: .white,
                                               disabled: false))
            }
        }
        .padding(.horizontal, 40)

    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }
}
