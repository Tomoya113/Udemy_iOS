//
//  Human.swift
//  QuestionApp
//
//  Created by tomoya tanaka on 2020/09/12.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation

class Human: Animal {
    
    
    override func breath() {
        super.breath()
        
        profile()
    }
    
    func profile() {
        print("私はうんこです")
    }
}
