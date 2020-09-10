//
//  ViewController.swift
//  Transition
//
//  Created by tomoya tanaka on 2020/09/09.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func plus(_ sender: Any) {
        count += 1
        label.text = String(count)
        
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        
        if count == 10 {
            navigationController?.pushViewController(nextVC, animated: true)
        }
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC: NextViewController = segue.destination as! NextViewController
        nextVC.count2 = count
        
    }
}

