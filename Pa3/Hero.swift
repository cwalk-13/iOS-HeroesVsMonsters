//
//  Hero.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 9/26/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation
class Hero: DungeonCharacter {
    var blockChance: Double
    var numOfTurns: Int

    
    init(bC: Double, numTurns: Int, hp: Int, aS: Int, dr: [Int], hc: Double, a: Int) {
        blockChance = bC
        numOfTurns = numTurns
        super.init(name: "Character", hp: hp, aS: aS, dr: dr, hc: hc, a: a)
    }
    
    func makeName() {
        print("What is your Hero name?: ")
        let input = readLine()
        if let theName = input {
            self.name = theName
        }
    }
}
