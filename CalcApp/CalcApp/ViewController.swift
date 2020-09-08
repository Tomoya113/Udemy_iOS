//
//  ViewController.swift
//  CalcApp
//
//  Created by tomoya tanaka on 2020/09/08.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carModel.frontWheel = 10
        carModel.rearWheel = 10
    }


    @IBAction func doAction(_ sender: Any) -> Void {
        
        carModel.drive()
        carModel.move(toBack: "後ろに行くよ！")
        let total = carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数 \(total)")
    }
}

