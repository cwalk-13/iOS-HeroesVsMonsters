//
//  Gremlin.swift
//  Pa3
//  This program builds the Gremlin object and updates it
//  CPSC 315-01, Fall 2018
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Gremlin: Monster {
    init() {
        super.init(healC: 0.4, hR: [20,40], name: "Micheal the Gremlin", hp: 70, aS: 5, dr: [15,30], hc: 0.8, a: 0)
    }
}
