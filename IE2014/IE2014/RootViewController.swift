//
//  RootViewController.swift
//  IE2014
//
//  Created by shusaku FUKUMINE on 2014/09/14.
//  Copyright (c) 2014年 shusaku FUKUMINE. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {


    var label : UILabel?


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()

        var button = UIButton(frame: CGRectMake(100, 200, 120, 50))
        button.backgroundColor = UIColor.lightGrayColor()
        button.setTitle("Button", forState: .Normal)
        button.addTarget(self, action: "pushedButton:", forControlEvents: .TouchUpInside)

        self.view.addSubview(button)

        self.label = UILabel(frame: CGRectMake(50, 350, 220, 80))
        self.label!.textAlignment = .Center
        self.label!.text = "Hello, World"

        self.view.addSubview(self.label!)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func pushedButton(sender: UIButton) {
        self.label!.text = "Push"
    }
}
