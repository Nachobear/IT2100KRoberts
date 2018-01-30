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
        myMessage=UILabel(frame:CGRectMake(30.0,50.0,300.0,50.0))
        myMessage.font=UIFont.systemFont(ofSize: 48.0)
        myMessage.text="Hello Xcode"
        myMessage.textColor=UIColor(patternImage: UIImage(named:"Background")!)
        view.addSubview(myMessage)
        NSLog("Hello Xcode, Again")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

