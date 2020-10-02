//
//  Thief.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Thief: Hero {
    
    init() {
        super.init(bC: 0.4, numTurns: 1, hp: 75, aS: 6, dr:[20,40], hc: 0.8, a: 0)
        super.makeName()
    }
    
    func supriseAttack() {
        var chance: Double
        chance = Double.random(in: 0.0...1.0)
        if chance <= 0.4 {
            setAttack()
            self.numOfTurns += 1
        }
        else {
            print("\(name)'s Suprise Attack failed")
        }
    }
    
    override func special() {
        supriseAttack()
    }
}
