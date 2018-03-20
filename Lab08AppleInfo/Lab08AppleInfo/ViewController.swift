//
//  ViewController.swift
//  Lab08AppleInfo
//
//  Created by user127310 on 3/19/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var appleLink: UISegmentedControl!
    @IBOutlet weak var webApple: UIWebView!
    
    @IBAction func changeAppleLink(_ sender: Any) {
        var appleURLString = ""
        switch appleLink.selectedSegmentIndex {
        case 0:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc."
        case 1:
            appleURLString = "https://en.wikipedia.org/wiki/IOS"
        case 2:
            appleURLString = "https://en.wikipedia.org/wiki/Xcode"
        case 3:
            appleURLString = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
        default:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc."
        }
        var appleURL: NSURL
        appleURL = NSURL(string: appleURLString)!
        webApple.loadRequest(NSURLRequest(url: appleURL as URL) as URLRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var appleURL: NSURL
        appleURL = NSURL(string: "https://en.wikipedia.org/wiki/Apple_Inc.")!
    
        webApple.loadRequest(NSURLRequest(url: appleURL as URL) as URLRequest)        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

