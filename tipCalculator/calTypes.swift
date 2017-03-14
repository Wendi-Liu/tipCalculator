//
//  calTypes.swift
//  tipCalculator
//
//  Created by Wendi Liu on 3/13/17.
//  Copyright © 2017 Wendi Liu. All rights reserved.
//

import Foundation

enum TipPerField : Int {
    case tipPerField1 = 0
    case tipPerField2 = 1
    case tipPerField3 = 2
    
    static let allValues = [tipPerField1, tipPerField2, tipPerField3]
}

let defaultPer = [15, 18, 20]

let tipPerPrefix = "tipPer"
