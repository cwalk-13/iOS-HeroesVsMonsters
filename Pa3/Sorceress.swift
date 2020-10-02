//
//  Sorceress.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Sorceress: Hero {
    
    init() {
        super.init(bC: 0.4, numTurns: 1, hp: 75, aS: 6, dr:[20,40], hc: 0.8, a: 0)
        super.makeName()
    }
    
    func heal() {
        if hitpoints > 0 {
            let healVal = Int.random(in: 10...40)
            self.hitpoints += healVal
            print("\(name) heals for: \(healVal) hitpoints")
        }
    }
    
    override func special() {
        heal()
    }
}
