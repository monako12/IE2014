//
//  RootViewController.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/14.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit


class RootViewController: UIViewController {


    var rapBackgroundView : RapBackgroundView?


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()

        var img : UIImage = UIImage(named: "rapBase.jpg")
        var imgView : UIImageView = UIImageView(image: img)
        imgView.frame = self.view.frame
        self.view.addSubview(imgView)
      
        var rapManager : RapManager = RapManager.getRapManager()
        rapManager.setView(self.view)
        rapManager.prepare()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
