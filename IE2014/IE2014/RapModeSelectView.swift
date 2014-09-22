//
//  RapModeSelectView.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/22.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


class RapModeSelectView: UIView {


    var toOnButton : UIButton?
    var toOffButton : UIButton?
    var wrapper : RapModeWrapper?


    override func drawRect(rect: CGRect)
    {
        self.toOnButton = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.toOnButton!.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)
        self.toOnButton!.setTitle("", forState: .Normal)

        self.toOnButton!.accessibilityLabel = ""
        self.toOnButton!.addTarget(self, action: "pushedToOnButton:", forControlEvents: .TouchUpInside)

        self.addSubview(self.toOnButton!)

        var fileName : String?
        var isOn : Bool = false

        switch (self.wrapper!.rapMode!) {
        case .Mode1:
            fileName = "rapButton1.jpg"
            isOn = true

        case .Mode2:
            fileName = "rapButton2.jpg"

        case .Mode3:
            fileName = "rapButton3.jpg"

        case .Mode4:
            fileName = "rapButton4.jpg"

        case .Mode5:
            fileName = "rapButton5.jpg"

        default:
            fileName = "rapButton6.jpg"
        }

        self.toOffButton = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.toOffButton!.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)
        self.toOffButton!.setTitle("", forState: .Normal)
        self.toOffButton!.setImage(UIImage(named: fileName!), forState: .Normal)

        self.toOffButton!.accessibilityLabel = ""
        self.toOffButton!.addTarget(self, action: "pushedToOffButton:", forControlEvents: .TouchUpInside)
        self.toOffButton!.hidden = true

        self.addSubview(self.toOffButton!)

        if (isOn == true) {
            self.toOnButton!.hidden = true
            self.toOffButton!.hidden = false
        }
    }


    func pushedToOnButton(sender: UIButton) {
        var rapManager : RapManager = RapManager.getRapManager()
        rapManager.changeRapMode(self.wrapper!.rapMode!)
    }


    func pushedToOffButton(sender: UIButton) {
    }


    func performToOn() {
        self.toOnButton!.hidden = true
        self.toOffButton!.hidden = false
    }


    func performToOff() {
        self.toOnButton!.hidden = false
        self.toOffButton!.hidden = true
    }

 
}
