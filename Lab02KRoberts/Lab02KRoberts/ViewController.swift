//
//  ViewController.swift
//  Lab02KRoberts
//
//  Created by user127310 on 1/29/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myMessage: UILabel
        myMessage=UILabel(frame: CGRect(x: 50.0 , y: 50.0, width: 300.0, height: 50.0))
        
        myMessage.text="Hello Xcode"
        myMessage.textColor=UIColor.red
        //myMessage.font=.systemFontOfSize(48.0)
        view.addSubview(myMessage)
        NSLog("Hello Xcode, Again")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

