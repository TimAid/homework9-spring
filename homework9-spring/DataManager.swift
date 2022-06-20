//
//  DataManager.swift
//  homework9-spring
//
//  Created by Aid on 20.06.2022.
//

import Foundation
import Spring

struct DataManager {
    
    static let shared = DataManager()
    
    var presets : [Spring.AnimationPreset] =  [
        .slideUp,
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeInDown,
        .fall,
        .flash,
        .morph,
        .pop,
        .shake,
        .wobble,
        .swing
    ]
    
    var curves = Spring.AnimationCurve.allCases
}
