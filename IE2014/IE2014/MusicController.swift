//
//  MusicController.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/19.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//


import UIKit
import AVFoundation


enum MusicControllerState {
  case Stopped, Playing
}


var musicController: MusicController?


class MusicController: NSObject {
   

    var state : MusicControllerState?
    var audioPlayer : AVAudioPlayer?
    var title : String?


    class func getMusicController() -> MusicController {
        if musicController != nil {
            return musicController!
        } else {
            musicController = MusicController()
            return musicController!
        }
    }


    override init() {
        super.init()

        self.state = .Stopped
    }


    func setMusic(index : Int) {

        self.state = .Stopped
        
        var musicManager : MusicManager = MusicManager.getMusicManager()

        self.title = musicManager.getTitle(index)
    }


    func play() {
        self.state = .Playing
 
        var path : String = NSBundle.mainBundle().pathForResource(self.title!, ofType: "mp3")!
        var url : NSURL = NSURL.fileURLWithPath(path)!
        var error : NSError?
        self.audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)

        if (error != nil) {
            return
        }

        self.audioPlayer!.volume = 0.5
        self.audioPlayer!.play()
    }


    func stop() {
        self.state = .Stopped
        self.audioPlayer!.stop()
    }


}
