//
//  RootViewController.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/14.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit
import AVFoundation


class RootViewController: UIViewController {


    var playButton : UIButton?


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()

        configurePlayButton()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func configurePlayButton() {
        self.playButton = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.playButton!.frame = CGRectMake(100, 330, 120, 50)
        self.playButton!.setTitle("", forState: .Normal)

        self.playButton!.setImage(UIImage(named: "play.png"), forState: .Normal)

        self.playButton!.accessibilityLabel = ""
        self.playButton!.addTarget(self, action: "pushedPlayButton:", forControlEvents: .TouchUpInside)

        self.view.addSubview(self.playButton!)
    }


    func pushedPlayButton(sender: UIButton) {

        var title : String = "炎のファイター　アントニオ猪木"
        var path : String = NSBundle.mainBundle().pathForResource(title, ofType: "mp3")!
        var url : NSURL = NSURL.fileURLWithPath(path)!
        var error : NSError?
        var audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)

        if (error != nil) {
            return
        }

        audioPlayer.volume = 0.5
        audioPlayer.play()
    }


}
