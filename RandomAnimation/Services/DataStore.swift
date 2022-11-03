//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Artemy Volkov on 02.11.2022.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases.map { $0.rawValue }
    
    let curves = AnimationCurve.allCases.map { $0.rawValue }
    
    private init() {}
}
