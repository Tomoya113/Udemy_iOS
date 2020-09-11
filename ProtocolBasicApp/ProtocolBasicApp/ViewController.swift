//
//  ViewController.swift
//  ProtocolBasicApp
//
//  Created by tomoya tanaka on 2020/09/10.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    
    @IBOutlet weak var label: UILabel!
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func catchData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
}

