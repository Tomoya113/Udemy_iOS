//
//  ViewController.swift
//  Keyboard
//
//  Created by tomoya tanaka on 2020/09/09.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
    }

    // InterfaceBuild
    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)

    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //キーボードが閉じるよ
        textField.resignFirstResponder()
        
        return true
    }
        
    
    
}

