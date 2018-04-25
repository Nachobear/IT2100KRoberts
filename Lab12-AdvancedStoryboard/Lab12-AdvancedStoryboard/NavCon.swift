//
//  NavCon.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user127310 on 4/24/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class NavCon: UINavigationController {
    
    var firstName: String!
    var middleName: String!
    var lastName: String!
    var addressLine1: String!
    var addressLine2: String!
    var city: String!
    var state: String!
    var zipCode: String!
    var email: String!
    
    

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
