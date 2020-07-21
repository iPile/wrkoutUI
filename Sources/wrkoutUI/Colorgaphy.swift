//
//  Colorgraphy.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-04-03.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public extension Color {
    // Colors
    static let wrkoutBlue = Color(red: 8/255, green: 193/255, blue: 1)
    static let wrkoutGreen = Color(red: 7/255, green: 190/255, blue: 26/255)
    static let wrkoutGray = Color(red: 220/255, green: 220/255, blue: 220/255)
    static let wrkoutOrange = Color(red: 221/225, green: 166/255, blue: 81/225)
    static let wrkoutOrangeBackground = Color(red: 255/225, green: 201/255, blue: 116/225)
    static let wrkoutOcean = Color(red: 181/255, green: 233/255, blue: 244/255).opacity(0.2)
    
    // Dark shades
    static let wrkoutDarkBlue = Color(red: 5/255, green: 129/255, blue: 170/255)
    static let wrkoutDarkGray = Color(red: 134/255, green: 136/255, blue: 138/255)
    static let wrkoutDarkOrange = Color(red: 210/255, green: 99/255, blue: 1/255)
    
    // Gradients
    static func wrkoutOrangeLinear() -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [white, wrkoutOrange]), startPoint: .topLeading, endPoint: .center)
    }
    
    static func wrkoutOceanGradient() -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [white, wrkoutOcean]), startPoint: .topLeading, endPoint: .center)
    }
    
    static func wrkoutOceanRadial() -> RadialGradient {
        return RadialGradient(gradient: Gradient(colors: [wrkoutOcean, white, wrkoutOcean]), center: .topLeading, startRadius: 100, endRadius: 650)
    }

    static func wrkoutOrangeRadial() -> RadialGradient {
        return RadialGradient(gradient: Gradient(colors: [white, wrkoutOrange]), center: .topLeading, startRadius: 30, endRadius: 700)
    }
}
