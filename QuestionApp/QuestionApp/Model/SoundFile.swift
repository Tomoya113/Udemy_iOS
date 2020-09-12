//
//  SoundFile.swift
//  QuestionApp
//
//  Created by tomoya tanaka on 2020/09/12.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile {
    
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, extensionName: String) {
        
        // 再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            // 効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch {
            print("エラーです")
        }
    }
}
