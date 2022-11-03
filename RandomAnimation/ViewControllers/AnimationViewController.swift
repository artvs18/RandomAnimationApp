//
//  AnimationViewController.swift
//  RandomAnimation
//
//  Created by Artemy Volkov on 02.11.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAniamtion()
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.damping = animation.damping
        animationView.scaleX = animation.scale
        animationView.scaleY = animation.scale
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAniamtion()
        
        sender.setTitle("Run \(animation.name)", for: .normal)
        sender.animation = "pop"
        sender.duration = 1.25
        sender.animate()
    }
}
