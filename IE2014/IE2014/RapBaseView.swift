//
//  RapBaseView.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/22.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


class RapBaseView: UIImageView {


    func setImage(mode: RapModes) {

        switch(mode) {
        case .Mode1:
            self.hidden = true

        case .Mode2:
            self.image = UIImage(named: "rapPage1.jpg")
            self.hidden = false

        case .Mode3:
            self.image = UIImage(named: "rapPage2.jpg")
            self.hidden = false

        case .Mode4:
            self.image = UIImage(named: "rapPage3.jpg")
            self.hidden = false

        case .Mode5:
            self.image = UIImage(named: "rapPage4.jpg")
            self.hidden = false

        default:
            self.image = UIImage(named: "rapPage5.jpg")
            self.hidden = false

        }
    }


}
