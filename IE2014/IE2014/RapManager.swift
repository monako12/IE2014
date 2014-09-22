
//
//  RapManager.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/19.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


enum RapModes {
  case Mode1, Mode2, Mode3, Mode4, Mode5, Mode6
}


var rapManager: RapManager?


class RapManager: NSObject {


    var view : UIView?
    var rapBaseView : RapBaseView?
    var rapMode : RapModes = .Mode1
    var rapModeArray : [String]?
    var rapModeDic : [String : AnyObject]?
    var rapArray : [String]?
    var rapDic : [String : AnyObject]?
    var width : CGFloat = 90.0
    var height : CGFloat = 107.0
    var horizontal : CGFloat = 0
    var vertical : CGFloat = 0


    class func getRapManager() -> RapManager {
        if rapManager != nil {
            return rapManager!
        } else {
            rapManager = RapManager()
            return rapManager!
        }
    }


    override init() {
        super.init()

        self.rapMode = .Mode1
    }


    func setView(view: UIView) {
        self.view = view
    }


    func prepare() {
        prepareRapMode()
        prepareRap()
    }


    func prepareRapMode() {

        self.rapModeArray = []
        self.rapModeDic = [:]

        var rapModeWrapper : RapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode1"
        rapModeWrapper.rapMode = .Mode1
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        rapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode2"
        rapModeWrapper.rapMode = .Mode2
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        rapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode3"
        rapModeWrapper.rapMode = .Mode3
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        rapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode4"
        rapModeWrapper.rapMode = .Mode4
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        rapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode5"
        rapModeWrapper.rapMode = .Mode5
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        rapModeWrapper = RapModeWrapper()
        rapModeWrapper.mode = "mode6"
        rapModeWrapper.rapMode = .Mode6
        self.rapModeArray!.append(rapModeWrapper.mode!)
        self.rapModeDic![rapModeWrapper.mode!] = rapModeWrapper

        var count : CGFloat = 0
        var width : CGFloat = 53.3
        var height : CGFloat = 53.3

        for rap in self.rapModeArray! {
            var xOffset : CGFloat = 3.0
            var yOffset : CGFloat = height * count 

            var rapModeSelectView : RapModeSelectView = RapModeSelectView(frame:CGRectMake(xOffset, yOffset, width, height))
            rapModeSelectView.backgroundColor = UIColor.clearColor()
            rapModeSelectView.wrapper = self.rapModeDic![rap] as? RapModeWrapper
            rapModeSelectView.wrapper!.rapModeSelectView = rapModeSelectView
            self.view!.addSubview(rapModeSelectView)

            count++
        }

    }


    func changeRapMode(mode: RapModes) {

        var rapModeSelectView : RapModeSelectView?
        var rapModeWrapper : RapModeWrapper?

        switch(self.rapMode) {
        case .Mode1:
            rapModeWrapper = self.rapModeDic!["mode1"] as? RapModeWrapper

        case .Mode2:
            rapModeWrapper = self.rapModeDic!["mode2"] as? RapModeWrapper

        case .Mode3:
            rapModeWrapper = self.rapModeDic!["mode3"] as? RapModeWrapper

        case .Mode4:
            rapModeWrapper = self.rapModeDic!["mode4"] as? RapModeWrapper

        case .Mode5:
            rapModeWrapper = self.rapModeDic!["mode5"] as? RapModeWrapper

        default:
            rapModeWrapper = self.rapModeDic!["mode6"] as? RapModeWrapper
        }

        rapModeSelectView = rapModeWrapper!.rapModeSelectView
        rapModeSelectView!.performToOff()


        switch(mode) {
        case .Mode1:
            rapModeWrapper = self.rapModeDic!["mode1"] as? RapModeWrapper

        case .Mode2:
            rapModeWrapper = self.rapModeDic!["mode2"] as? RapModeWrapper

        case .Mode3:
            rapModeWrapper = self.rapModeDic!["mode3"] as? RapModeWrapper

        case .Mode4:
            rapModeWrapper = self.rapModeDic!["mode4"] as? RapModeWrapper

        case .Mode5:
            rapModeWrapper = self.rapModeDic!["mode5"] as? RapModeWrapper

        default:
            rapModeWrapper = self.rapModeDic!["mode6"] as? RapModeWrapper
        }

        rapModeSelectView = rapModeWrapper!.rapModeSelectView
        rapModeSelectView!.performToOn()
        self.rapMode = mode
        self.rapBaseView!.setImage(mode)

    }


    func prepareRap() {
        self.rapArray = []
        self.rapDic = [:]
        
        self.rapBaseView = RapBaseView(frame:CGRectMake(210, 0, 270, 320))
        self.rapBaseView!.backgroundColor = UIColor.clearColor()
        self.rapBaseView!.hidden = true
        self.view!.addSubview(self.rapBaseView!)

        var rapWrapper : RapWrapper = RapWrapper()
        rapWrapper.title = "rapButton1"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton2"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton3"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton4"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton5"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton6"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton7"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton8"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        rapWrapper = RapWrapper()
        rapWrapper.title = "rapButton9"
        self.rapArray!.append(rapWrapper.title!)
        self.rapDic![rapWrapper.title!] = rapWrapper

        for rap in self.rapArray! {
            var xOffset : CGFloat = self.horizontal * self.width + 210
            var yOffset : CGFloat = self.vertical * self.height 

            var rapSelectView : RapSelectView = RapSelectView(frame:CGRectMake(xOffset, yOffset, self.width, self.height))
            rapSelectView.backgroundColor = UIColor.clearColor()
            rapSelectView.rapWrapper = self.rapDic![rap] as? RapWrapper
            //self.rapBaseView!.addSubview(rapSelectView)
            self.view!.addSubview(rapSelectView)

            self.horizontal++

            if (self.horizontal >= 3) {
                self.horizontal = 0
                self.vertical++
            }
        }

    }
   
}
