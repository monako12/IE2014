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
    var stopButton : UIButton?


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()

        var musicController : MusicController = MusicController.getMusicController()
        musicController.setMusic(0)
 
        configurePlayButton()
        configureStopButton()
    }


    override func viewWillAppear(animated: Bool) {
        var musicController = MusicController.getMusicController()

        if (musicController.state == .Stopped) {
            self.playButton!.hidden = false
            self.stopButton!.hidden = true
        } else {
            self.playButton!.hidden = true
            self.stopButton!.hidden = false
        }
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


    func configureStopButton() {
        self.stopButton = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.stopButton!.frame = CGRectMake(100, 330, 120, 50)
        self.stopButton!.setTitle("", forState: .Normal)

        self.stopButton!.setImage(UIImage(named: "stop.png"), forState: .Normal)

        self.stopButton!.accessibilityLabel = ""
        self.stopButton!.addTarget(self, action: "pushedStopButton:", forControlEvents: .TouchUpInside)

        self.view.addSubview(self.stopButton!)
    }


    func pushedPlayButton(sender: UIButton) {
        self.playButton!.hidden = true
        self.stopButton!.hidden = false

        var musicController = MusicController.getMusicController()
        musicController.play()
    }


    func pushedStopButton(sender: UIButton) {
        self.playButton!.hidden = false
        self.stopButton!.hidden = true

        var musicController = MusicController.getMusicController()
        musicController.stop()
    }

}
