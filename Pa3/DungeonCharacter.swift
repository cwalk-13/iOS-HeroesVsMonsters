//
//  DungeonCharacter.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 9/26/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class DungeonCharacter {
    var name: String 
    var hitpoints: Int
    var attackSpeed: Int
    var damRange: [Int]
    var hitChance: Double
    var attack: Int
    
    init() {
        self.name = "Character"
        self.hitpoints = 0
        self.attackSpeed = 0
        self.damRange = [0,0]
        self.hitChance = 0.0
        self.attack = 0
    }
    func setAttack() {
        if hitChance > 0.0 {
            attack = Int.random(in: damRange[0]...damRange[1])
            print("\(name) attacks for: \(attack) damage")
        }
        else {
            print("Attack failed")
        }
    }
}
