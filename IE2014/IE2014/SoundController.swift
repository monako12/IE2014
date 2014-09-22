//
//  SoundController.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/20.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit
import AVFoundation


var soundController: SoundController?


class SoundController: NSObject {
 

    var audioPlayer : AVAudioPlayer?


    class func getSoundController() -> SoundController {
        if soundController != nil {
            return soundController!
        } else {
            soundController = SoundController()
            return soundController!
        }
    }


    func play(fileName: String) {
        var path : String = NSBundle.mainBundle().pathForResource(fileName, ofType: "wav")!
        var url : NSURL = NSURL.fileURLWithPath(path)!
        self.audioPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)

        self.audioPlayer!.play()
    }

}
