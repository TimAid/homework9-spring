//
//  ViewController.swift
//  homework9-spring
//
//  Created by Aid on 19.06.2022.
//

import UIKit
import Spring

var animation = Animations.getRandomAnimation()

class ViewController: UIViewController {

    //MARK: IBoutlets
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var SpringAnimationButton: SpringButton!
    @IBOutlet weak var springLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 20
        
    }

    @IBAction func springAnimationButtonPressed(_ sender: SpringButton) {
        
        springLabel.text = " name : \(animation.name.description) \n delay: \(animation.delay.description) \n curve: \(animation.curve.description) \n forse: \(animation.forse.description) \n duration \(animation.duration.description)"
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.force = CGFloat(animation.forse)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
        
        animation = Animations.getRandomAnimation()
        SpringAnimationButton.setTitle(animation.name, for: .normal)
        
    }
    
}

