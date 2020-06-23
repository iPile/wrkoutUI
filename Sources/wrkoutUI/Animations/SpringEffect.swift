//
//  SpringEffect.swift
//  wrkout
//
//  Created by Ignas Pileckas on 2020-04-14.
//  Copyright © 2020 Ignas Pileckas. All rights reserved.
//

import SwiftUI

extension Animation {
    static var springEffect: Animation {
        Animation.spring(dampingFraction: 0.4)
            .speed(1.5)
    }
}


