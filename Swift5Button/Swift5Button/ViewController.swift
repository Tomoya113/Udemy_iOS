//
//  ViewController.swift
//  Swift5Button
//
//  Created by tomoya tanaka on 2020/09/07.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        count = 10
        
        print(count)
    }

    
    @IBAction func tap(_ sender: AnyObject) {
        
    }
}

