//
//  NextViewController.swift
//  TableViewBasic
//
//  Created by tomoya tanaka on 2020/09/10.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var toDoString = String()
    @IBOutlet weak var todoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        todoLabel.text = toDoString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
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
