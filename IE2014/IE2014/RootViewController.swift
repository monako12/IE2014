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

        var button1 = UIButton(frame: CGRectMake(100, 100, 120, 50))
        button1.backgroundColor = UIColor.lightGrayColor()
        button1.setTitle("Button1", forState: .Normal)
        button1.addTarget(self, action: "pushedButton1:", forControlEvents: .TouchUpInside)

        self.view.addSubview(button1)

        var button2 = UIButton(frame: CGRectMake(100, 170, 120, 50))
        button2.backgroundColor = UIColor.lightGrayColor()
        button2.setTitle("Button2", forState: .Normal)
        button2.addTarget(self, action: "pushedButton2:", forControlEvents: .TouchUpInside)

        self.view.addSubview(button2)

        self.label = UILabel(frame: CGRectMake(50, 350, 220, 80))
        self.label!.textAlignment = .Center
        self.label!.text = "Hello, World"

        self.view.addSubview(self.label!)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     

    func pushedButton1(sender: UIButton) {
        self.label!.text = "Button1"
    }


    func pushedButton2(sender: UIButton) {
        self.label!.text = "Button2"
    }
}
