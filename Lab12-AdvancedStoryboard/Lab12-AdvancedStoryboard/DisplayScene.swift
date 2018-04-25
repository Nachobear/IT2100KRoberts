//
//  DisplayScene.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user127310 on 4/24/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class DisplayScene: UIViewController {
    
    @IBOutlet weak var outputTextView: UITextView!
    
    @IBAction override func viewWillAppear(_ animated: Bool) {
        let firstName = (parent as! NavCon).firstName
        let middleName = (parent as! NavCon).middleName
        let lastName = (parent as! NavCon).lastName
        let addressLine1 = (parent as! NavCon).addressLine1
        let addressLine2 = (parent as! NavCon).addressLine2
        let city = (parent as! NavCon).city
        let state = (parent as! NavCon).state
        let zipCode = (parent as! NavCon).zipCode
        let email = (parent as! NavCon).email
        
        self.outputTextView.text =
            "Name: \n\(firstName!) \(middleName!) \(lastName!) \n\nAddress: \n\(addressLine1!) \n\(addressLine2!) \n\(city!), \(state!) \(zipCode!) \n\nEmail: \n\(email!)"
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
