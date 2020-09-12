//
//  ImagesModel.swift
//  QuestionApp
//
//  Created by tomoya tanaka on 2020/09/12.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation

class ImagesModel {
    
    // 画像名を取得s知恵、その画像名が人間化そうでないかをフラグによって判定するための機能
    
    let imageText: String
    
    let answer: Bool
    
    init(imageName: String, correctOrNot: Bool) {
        
        imageText = imageName
        
        answer = correctOrNot
        
    }
}
