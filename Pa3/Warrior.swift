//
//  Warrior.swift
//  Pa3
//  This program builds the Warrior object and updates it
//  CPSC 315-01, Fall 2018
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Warrior: Hero {
    
    init() {
        super.init(bC: 0.2, numTurns: 1, hp: 125, aS: 4, dr:[35,60], hc: 0.8, a: 0)
        super.makeName()
    }
    
    func crushingBlow() {
        var chance: Double
        chance = Double.random(in: 0.0...1.0)
        if chance <= 0.4 {
            self.attack = Int.random(in: 75...175)
            print("Crushing blow deals: \(attack) Damage")
            return
        }
        else {
            self.attack = 0
            print("Crushing blow misses")
        }
        return
    }
    
    override func reset(){
        self.hitpoints = 125
    }
    
    override func special() {
        crushingBlow()
    }
}
