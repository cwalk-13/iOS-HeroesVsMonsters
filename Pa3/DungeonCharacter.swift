//
//  DungeonCharacter.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 9/26/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class DungeonCharacter {
    var name: String = "Character"
    var hitpoints: Int = 100
    var attackSpeed: Int = 10
    var damRange: [Int] = [1,50]
    var hitChance: Double = 0.5
    var attack: Int = 0
    
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
