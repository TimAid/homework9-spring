//
//  Model.swift
//  homework9-spring
//
//  Created by Aid on 19.06.2022.
//

import Foundation
import Spring




struct Animations {
    
    let name: String
    let curve: String
    let delay: Float
    let forse: Float
    let duration: Float
    
    

    static func getRandomAnimation() -> Animations {
        Animations(name: DataManager.shared.presets.randomElement()?.rawValue ?? Spring.AnimationPreset.swing.rawValue,
                   curve: DataManager.shared.curves.randomElement()?.rawValue ?? Spring.AnimationCurve.easeIn.rawValue,
                   delay: Float.random(in: 0.1...0.3),
                   forse: Float.random(in: 1...3),
                   duration: Float.random(in: 0.4...0.6)
                   )
    }
}

