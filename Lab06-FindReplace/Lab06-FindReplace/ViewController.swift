//
//  ViewController.swift
//  Lab06-FindReplace
//
//  Created by user127310 on 2/26/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stringToFind: UITextField!
    @IBOutlet weak var stringToReplace: UITextField!
    @IBOutlet weak var textBox: UITextView!
    
    @IBAction func updateText(sender: AnyObject) {
        textBox.text! = textBox.text.replacingOccurrences(of: stringToFind.text!, with: stringToReplace.text!)}
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        stringToFind.resignFirstResponder()
        stringToReplace.resignFirstResponder()
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

