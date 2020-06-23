//
//  Colorgraphy.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-04-03.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

extension Color {
    // Colors
    public static let wrkoutBlue = Color(red: 8/255, green: 193/255, blue: 1)
    public static let wrkoutGreen = Color(red: 7/255, green: 190/255, blue: 26/255)
    public static let wrkoutGray = Color(red: 220/255, green: 220/255, blue: 220/255)
    public static let wrkoutOrange = Color(red: 255/255, green: 119/255, blue: 0/255).opacity(0.9)
    public static let wrkoutOcean = Color(red: 181/255, green: 233/255, blue: 244/255).opacity(0.2)
    
    // Dark shades
    public static let wrkoutDarkBlue = Color(red: 5/255, green: 129/255, blue: 170/255)
    public static let wrkoutDarkGray = Color(red: 134/255, green: 136/255, blue: 138/255)
    public static let wrkoutDarkOrange = Color(red: 210/255, green: 99/255, blue: 1/255)
    
    // Gradients
    public static func wrkoutOrangeLinear() -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [white, wrkoutOrange]), startPoint: .topLeading, endPoint: .center)
    }
    
    public static func wrkoutOceanGradient() -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [white, wrkoutOcean]), startPoint: .topLeading, endPoint: .center)
    }
    
    public static func wrkoutOceanRadial() -> RadialGradient {
        return RadialGradient(gradient: Gradient(colors: [wrkoutOcean, white, wrkoutOcean]), center: .topLeading, startRadius: 100, endRadius: 650)
    }

    public static func wrkoutOrangeRadial() -> RadialGradient {
        return RadialGradient(gradient: Gradient(colors: [white, wrkoutOrange]), center: .topLeading, startRadius: 30, endRadius: 700)
    }
}
