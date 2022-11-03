//
//  Animation.swift
//  RandomAnimation
//
//  Created by Artemy Volkov on 02.11.2022.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let damping: Double
    let scale: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        damping: \(String(format: "%.02f", damping))
        scale: \(String(format: "%.02f", scale))
        delay: \(String(format: "%.02f", scale))
        """
    }
    
    static func getRandomAniamtion() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement() ?? "pop",
            curve: DataStore.shared.curves.randomElement() ?? "spring",
            force: Double.random(in: 1...1.3),
            duration: Double.random(in: 0.75...1.5),
            damping: Double.random(in: 0.7...1),
            scale: Double.random(in: 1...1.5),
            delay: Double.random(in: 0...0.5)
        )
    }
}
