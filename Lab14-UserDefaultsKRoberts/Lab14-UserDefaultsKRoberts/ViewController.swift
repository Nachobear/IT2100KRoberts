//
//  ViewController.swift
//  Lab14-UserDefaultsKRoberts
//
//  Created by user127310 on 5/7/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kOnOffToggle="onOff"
    let kHueSetting="hue"
    let kBrightnessSetting="brightness"
    
    @IBOutlet weak var toggleSwitch: UISwitch!
    @IBOutlet weak var hueSlider: UISlider!
    @IBOutlet weak var brightnessSlider: UISlider!
    
    
    @IBAction func setBackgroundHueValue(sender: AnyObject!) {
        
        let userDefaults: UserDefaults = UserDefaults.standard
        userDefaults.set(toggleSwitch.isOn, forKey: kOnOffToggle)
        userDefaults.set(hueSlider.value, forKey: kHueSetting)
        userDefaults.set(brightnessSlider.value, forKey: kBrightnessSetting)
        userDefaults.synchronize()
        
        
        if toggleSwitch.isOn {
            view.backgroundColor=UIColor(hue: CGFloat(hueSlider.value), saturation: 0.75, brightness: (CGFloat(brightnessSlider.value)), alpha: 1.0)
        } else {
            view.backgroundColor=UIColor.white
        }
        
    }
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults: UserDefaults = UserDefaults.standard
        hueSlider.value=userDefaults.float(forKey: kHueSetting)
        brightnessSlider.value=userDefaults.float(forKey: kBrightnessSetting)
        toggleSwitch.isOn=userDefaults.bool(forKey: kOnOffToggle)
        
        setBackgroundHueValue(sender: nil)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

