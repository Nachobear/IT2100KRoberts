//
//  ViewController.swift
//  Lab07
//
//  Created by user127310 on 3/11/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var stepperValue: UIStepper!
    @IBOutlet weak var sliderOutput: UILabel!
    @IBOutlet weak var stepperOutput: UILabel!
    
    @IBAction func changeSlider(sender: AnyObject) {
        sliderOutput.text = "Slider: " + String(format: "%.0f", sliderValue.value)
    }

    @IBAction func changeStepper(sender: AnyObject) {
        stepperOutput.text = "Stepper: " + String(format: "%.0f", stepperValue.value)
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

