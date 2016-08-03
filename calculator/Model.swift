//
//  File.swift
//  calculator
//
//  Created by Mohamed  on 8/3/16.
//  Copyright © 2016 Mohamed . All rights reserved.
//

import Foundation

class Logic {
    private var accumulator = 0.0
    func setOperand(operand: Double) {}
    func performOperation(symbol: String) {
        switch symbol {
        case "": accumulator = M_PI
        case "":accumulator = sqrt(accumulator)
        default: break
        }
    }
}
var result: Double {
get {
    return 0.0
}
}

