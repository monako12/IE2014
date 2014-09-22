//
//  SoundManager.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/19.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


var soundManager: SoundManager?


class SoundManager: NSObject {
 
    let mode1 : [String:String] = [
        "rapButton1":"00", "rapButton2":"01", "rapButton3":"02",
        "rapButton4":"03", "rapButton5":"04", "rapButton6":"05",
        "rapButton7":"06", "rapButton8":"07", "rapButton9":"08"
    ]
    let mode2 : [String:String] = [
        "rapButton1":"10", "rapButton2":"11", "rapButton3":"12",
        "rapButton4":"13", "rapButton5":"14", "rapButton6":"15",
        "rapButton7":"16", "rapButton8":"17", "rapButton9":"18"
    ]
    let mode3 : [String:String] = [
        "rapButton1":"20", "rapButton2":"21", "rapButton3":"22",
        "rapButton4":"23", "rapButton5":"24", "rapButton6":"25",
        "rapButton7":"26", "rapButton8":"27", "rapButton9":"28"
    ]
    let mode4 : [String:String] = [
        "rapButton1":"30", "rapButton2":"31", "rapButton3":"32",
        "rapButton4":"33", "rapButton5":"34", "rapButton6":"35",
        "rapButton7":"36", "rapButton8":"37", "rapButton9":"38"
    ]
    let mode5 : [String:String] = [
        "rapButton1":"40", "rapButton2":"41", "rapButton3":"42",
        "rapButton4":"43", "rapButton5":"44", "rapButton6":"45",
        "rapButton7":"46", "rapButton8":"47", "rapButton9":"48"
    ]
    let mode6 : [String:String] = [
        "rapButton1":"50", "rapButton2":"51", "rapButton3":"52",
        "rapButton4":"53", "rapButton5":"54", "rapButton6":"55",
        "rapButton7":"56", "rapButton8":"57", "rapButton9":"58"
    ]


    class func getSoundManager() -> SoundManager {
        if soundManager != nil {
            return soundManager!
        } else {
            soundManager = SoundManager()
            return soundManager!
        }
    }


    func getFileName(mode: RapModes, key: String) -> String {
        switch(mode) {
        case .Mode1:
            return self.mode1[key]!
        case .Mode2:
            return self.mode2[key]!
        case .Mode3:
            return self.mode3[key]!
        case .Mode4:
            return self.mode4[key]!
        case .Mode5:
            return self.mode5[key]!
        default:
            return self.mode6[key]!
        }
    }
}
