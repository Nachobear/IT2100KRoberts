//
//  ViewController.swift
//  Lab05-Calculator
//
//  Created by user127310 on 2/24/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userInput1: UITextField!
    @IBOutlet weak var userInput2: UITextField!
    
    @IBAction func setOutput(sender: AnyObject) {
    userOutput.text = (userInput1.text! + " " + userInput2.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

