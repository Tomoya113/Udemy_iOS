//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by tomoya tanaka on 2020/09/08.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0"
        
        
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        
        countLabel.text = String(count)
        
        if count >= 10 {
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        count -= 1
        
        countLabel.text = String(count)
        
        if count <= 0 {
            resetColor()
        }
    }
    
    func changeTextColor() -> Void {
        countLabel.textColor = .yellow
    }
    
    func resetColor() {
        countLabel.textColor = .white
    }
}

