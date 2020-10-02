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
    
    init(name: String, hp: Int, aS: Int, dr: [Int], hc: Double, a: Int) {
        self.name = name
        self.hitpoints = hp
        self.attackSpeed = aS
        self.damRange = dr
        self.hitChance = hc
        self.attack = a
    }
    func setAttack() {
        var chance: Double
        if hitChance > 0.0 {
            chance = Double.random(in: 0.0...1.0)
            if chance <= hitChance {
                self.attack = Int.random(in: damRange[0]...damRange[1])
                print("\(name) attacks for: \(attack) damage")
            }
            else {
                print("\(name) missed")
            }
        }
    }
}
