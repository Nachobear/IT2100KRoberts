//
//  GenericScene.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user127310 on 4/24/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class GenericScene: UIViewController {
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var middleNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var addressLine1TF: UITextField!
    @IBOutlet weak var addressLine2TF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var zipCodeTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    
    @IBAction func storeInfoScene1() {
        (parent as! NavCon).firstName = self.firstNameTF.text
        
        (parent as! NavCon).middleName = self.middleNameTF.text
        
        (parent as! NavCon).lastName = self.lastNameTF.text
    }
    
    @IBAction func storeInfoScene2() {
        
        if (addressLine1TF.text != "") {
        
        
        (parent as! NavCon).addressLine1 = self.addressLine1TF.text
        (parent as! NavCon).addressLine2 = self.addressLine2TF.text
        (parent as! NavCon).city = self.cityTF.text
        (parent as! NavCon).state = self.stateTF.text
        (parent as! NavCon).zipCode = self.zipCodeTF.text
        (parent as! NavCon).email = self.emailTF.text
        
        }
    }
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        sender.resignFirstResponder()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
