//
//  Hero.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 9/26/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation
class Hero: DungeonCharacter {
    var blockChance: Double = 0.0
    var numOfTurns: Int = 0
   
    override init() {
        super.init()
    }
    
    func makeName() {
        print("What is your Hero name?: ")
        let input = readLine()
        if let theName = input {
            self.name = theName
            return
        }
        return
    }
}
