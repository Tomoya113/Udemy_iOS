//
//  Car.swift
//  CalcApp
//
//  Created by tomoya tanaka on 2020/09/08.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation

class Car {
    var frontWheel: Int = 0
    var rearWheel: Int = 0
    
    init() {
        frontWheel = 0
        rearWheel = 0
    }
    
    func drive() {
        print("運転開始")
        print("前輪   \(frontWheel)")
        print("後輪   \(rearWheel)")
    }
    
    func move(toBack: String) {
        print(toBack)
    }
    
    func plusAndMinus(num1: Int, num2: Int) -> Int{
        return num1 + num2
    }
}
