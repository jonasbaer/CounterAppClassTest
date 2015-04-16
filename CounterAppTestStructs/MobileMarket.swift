//
//  MobileMarket.swift
//  CounterAppTestStructs
//
//  Created by Jonas Baer on 16.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import Foundation

struct MobileMarket {
    var producer = ""
    var operatingSystem = ""
    var successFactor = 0

    func randomNumberFunction(maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }
}

