//
//  WithoutMP3.swift
//  QuestionApp
//
//  Created by tomoya tanaka on 2020/09/12.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation

class WithoutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        if extensionName == "mp3" {
            print("このファイルは再生できません")
        }
        
        player?.stop()
    }
}
