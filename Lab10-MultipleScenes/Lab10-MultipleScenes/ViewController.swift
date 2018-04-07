//
//  ViewController.swift
//  Lab10-MultipleScenes
//
//  Created by user127310 on 4/6/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBAction func hideKeyboard(_ sender: Any) {
        name.resignFirstResponder()
    }
    
    
    
    @IBAction func exitToHere(sender: UIStoryboardSegue) {
        
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

