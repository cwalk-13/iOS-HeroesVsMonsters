//
//  Skeleton.swift
//  Pa3
//  This program builds the Skeleton object and updates it
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class Skeleton: Monster {
    init() {
        super.init(healC: 0.3, hR: [30,50], name: "Bobby Skeleton", hp: 100, aS: 3, dr: [30,50], hc: 0.8, a: 0)
    }
}
