//
//  Warrior.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Warrior: Hero {
    
    init() {
        super.init(bC: 0.2, numTurns: 1, hp: 125, aS: 4, dr:[35,60], hc: 0.8, a: 0)
    }
    
  /*  override func setAttack() {
        print("Choose attack (1 or 2): ")
        print("1.Attack")
        print("2.Crushing Blow (40% hit chance)")
        let input = readLine()
        if let num = input {
            if num == "1" {
                super.setAttack()
            }
            if num == "2" {
                crushingBlow()
            }
        }
    }
    */
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
    
    override func special() {
        crushingBlow()
    }
}
