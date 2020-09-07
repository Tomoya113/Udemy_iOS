//
//  NextViewController.swift
//  Swift5Button
//
//  Created by tomoya tanaka on 2020/09/07.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: AnyObject) {
        label.text = "暗号が解除されました"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
