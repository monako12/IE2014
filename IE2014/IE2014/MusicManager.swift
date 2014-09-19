//
//  MusicManager.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/19.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


var musicManager: MusicManager?


class MusicManager: NSObject {
 

    let musicArray : [String] = [
        "炎のファイター　アントニオ猪木"
    ]


    class func getMusicManager() -> MusicManager {
        if musicManager != nil {
            return musicManager!
        } else {
            musicManager = MusicManager()
            return musicManager!
        }
    }  


    func getTitle(index : Int) -> String {
        return self.musicArray[index]
    }

}
