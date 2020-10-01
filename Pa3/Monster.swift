//
//  Monster.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation
class Monster: DungeonCharacter {
    var healChance: Double
    var healRange: [Int]
    
    init(hC: Double, hR: [Int], name: String, hp: Int, aS: Int, dr: [Int], hc: Double, a: Int) {
        healChance = hC
        healRange = hR
        super.init(name: name, hp: hp, aS: aS, dr: dr, hc: hc, a: a)
    }
    
    func heal() {
        if hitpoints > 0 {
            var healVal: Int
            var chance: Double
            if healChance > 0.0 {
                chance = Double.random(in: 0.0...1.0)
                if chance <= hitChance {
                    healVal = Int.random(in: healRange[0]...healRange[1])
                    self.hitpoints += healVal
                    print("\(name) heals for: \(healVal) hitpoints")
                }
            }
            else {
                print("\(name)'s Heal failed")
            }
        }
    }
}
