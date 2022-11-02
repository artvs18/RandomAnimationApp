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
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var dampingLabel: UILabel!
    @IBOutlet var scaleLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animationStarted = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomValueForLabels(includingPreset: true)
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        if !animationStarted {
            setAnimationFor(animationView)
            animationStarted.toggle()
        } else {
            presetLabel.text = getStringWithoutPrefix(sender.currentTitle ?? "")
            setAnimationFor(animationView)
        }
        
        setRandomValueForLabels(includingPreset: false)
    
        animationView.animate()
        
        sender.setTitle("Run \(Animation.getRandomPreset())", for: .normal)
        sender.animation = "pop"
        sender.duration = 1
        sender.animate()
    }
}

extension AnimationViewController {
    private func getStringWithoutPrefix(_ string: String) -> String {
        String(string.suffix(from: string.index(string.startIndex, offsetBy: 4)))
    }
    
    private func setAnimationFor(_ view: SpringView) {
        view.animation = presetLabel.text ?? ""
        view.curve = curveLabel.text ?? ""
        view.force = CGFloat(Float(forceLabel.text ?? "") ?? 0)
        view.duration = CGFloat(Float(durationLabel.text ?? "") ?? 0)
        view.damping = CGFloat(Float(dampingLabel.text ?? "") ?? 0)
        view.scaleX = CGFloat(Float(scaleLabel.text ?? "") ?? 0)
        view.scaleY = CGFloat(Float(scaleLabel.text ?? "") ?? 0)
        view.delay = CGFloat(Float(delayLabel.text ?? "") ?? 0)
    }
    
    private func setRandomValueForLabels(includingPreset: Bool) {
        if includingPreset {
            presetLabel.text = Animation.getRandomPreset()
        }
        curveLabel.text = Animation.getRandomCurve()
        forceLabel.text = Animation.getRandomForce()
        durationLabel.text = Animation.getRandomDuration()
        dampingLabel.text = Animation.getRandomDamping()
        scaleLabel.text = Animation.getRandomScale()
        delayLabel.text = Animation.getRandomDelay()
    }
}
