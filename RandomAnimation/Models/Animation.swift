//
//  Animation.swift
//  RandomAnimation
//
//  Created by Artemy Volkov on 02.11.2022.
//

struct Animation {
    static func getRandomPreset() -> String {
        DataStore.shared.animations.randomElement() ?? ""
    }
    
    static func getRandomCurve() -> String {
        DataStore.shared.curves.randomElement() ?? ""
    }
    
    static func getRandomForce() -> String {
        String(format: "%0.2f", Float.random(in: 1...1.3))
    }
    
    static func getRandomDuration() -> String {
        String(format: "%0.2f", Float.random(in: 0.75...1.5))
    }
    
    static func getRandomDamping() -> String {
        String(format: "%0.2f", Float.random(in: 0.7...1))
    }
    
    static func getRandomScale() -> String {
        String(format: "%0.2f", Float.random(in: 1...1.5))
    }
    
    static func getRandomDelay() -> String {
        String(format: "%0.2f", Float.random(in: 0...0.5))
    }
}
