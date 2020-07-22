//
//  Typography.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-04-04.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

public extension Font {
    static func wrkoutButton(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 18, weight: weight, design: .rounded)
    }
    
    static func wrkoutExtraSmall(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 14, weight: weight, design: .default)
    }
    
    static func wrkoutSmall(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 18, weight: weight, design: .default)
    }
    
    static func wrkoutMedium(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 22, weight: weight, design: .default)
    }
    
    static func wrkoutLarge(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 26, weight: weight, design: .default)
    }
    
    static func wrkoutTitle(weight: Font.Weight = .regular) -> Font {
        return Font.system(size: 34, weight: weight, design: .default)
    }
}
