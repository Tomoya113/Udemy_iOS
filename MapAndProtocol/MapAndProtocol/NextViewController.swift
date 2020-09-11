//
//  NextViewController.swift
//  MapAndProtocol
//
//  Created by tomoya tanaka on 2020/09/11.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

protocol SearchLocationDelegate {
    func searchLocation(idoValue: String, keidoValue: String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var idoTextField: UITextField!
    
    @IBOutlet weak var keidoTextField: UITextField!
    
    var delegate: SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func okAction(_ sender: Any) {
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        
        if idoTextField.text != nil && keidoTextField.text != nil {
            delegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
            dismiss(animated: true, completion: nil)
        }
    }
    
}
