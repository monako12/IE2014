//
//  RapSelectView.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/19.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


class RapSelectView: UIView {


    var button : UIButton?
    var rapWrapper : RapWrapper?


    override func drawRect(rect: CGRect)
    {
        self.button = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.button!.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)
        self.button!.setTitle("", forState: .Normal)

        self.button!.accessibilityLabel = ""
        self.button!.addTarget(self, action: "pushedButton:", forControlEvents: .TouchUpInside)

        self.addSubview(self.button!)
    }


    func pushedButton(sender: UIButton) {
        var soundManager : SoundManager = SoundManager.getSoundManager()

        var rapManager : RapManager = RapManager.getRapManager()
        var rapMode : RapModes = rapManager.rapMode

        var fileName = soundManager.getFileName(rapMode, key: self.rapWrapper!.title!)

        var soundController : SoundController = SoundController.getSoundController()
        soundController.play(fileName)
    }
 
}
