//
//  ViewController.swift
//  Lab09KRoberts
//
//  Created by user127310 on 3/28/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var favoriteLanguage: UILabel!
    @IBOutlet weak var selectedAction: UITextView!
    
    ///////////////////////////////////////////////////////////////
    // V [This is the "Enter Name and Email" alert] V
    
    @IBAction func showAlertWithFields(sender: AnyObject) {
        let alertController = UIAlertController(title: "Enter Name and Email", message: "Uses textFields for input", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder="<< name >>"
            textField.keyboardType=UIKeyboardType.default
        })
        
        alertController.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder="<< email >>"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        let defaultAction = UIAlertAction(title: "Ok",
            style: UIAlertActionStyle.default,
            handler: {(alertAction: UIAlertAction) in
                let name: String = alertController.textFields![0].text!
                self.userName.text="\(name)"
                let emailAddress: String = alertController.textFields![1].text!
                self.userEmail.text="\(emailAddress)"
                self.userOutput.text="entered name and email"
                
        })
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    /////////////////////////////////////////////////////////////////
    // V [This is the "Select Favorite Language" alert] V
    
    @IBAction func showAlertWithOptions(sender: AnyObject) {
    let alertController = UIAlertController(title: "Choose Your Favorite Language", message: "(of those listed)", preferredStyle: UIAlertControllerStyle.alert)
        
        let cSharpButton = UIAlertAction(title: "C#",
            style: UIAlertActionStyle.default,
            handler: {(alertAction: UIAlertAction) in
               self.favoriteLanguage.text="C#"
                self.userOutput.text="chose favorite language"        })
        
        let javaButton = UIAlertAction(title: "Java",
            style: UIAlertActionStyle.default,
            handler: {(alertAction: UIAlertAction) in
               self.favoriteLanguage.text="Java"
                self.userOutput.text="chose favorite language"        })
        
        let swiftButton = UIAlertAction(title: "Swift",
            style: UIAlertActionStyle.default,
            handler: {(alertAction: UIAlertAction) in
               self.favoriteLanguage.text="Swift"
                self.userOutput.text="chose favorite language"        })
    
        alertController.addAction(cSharpButton)
        alertController.addAction(javaButton)
        alertController.addAction(swiftButton)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    /////////////////////////////////////////////////////////////////
    // V [This is the "Choose an Action" actionsheet] V
    
    
    @IBAction func showActionSheet(sender: AnyObject) {
        let actionSheet = UIAlertController(title: "Choose an Action", message: "choose one of the actions provided below", preferredStyle: .actionSheet)
        
        let sendInformationButton = UIAlertAction(title: "Send Information", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction) in self.selectedAction.text="Thank you! We will send information about \(self.favoriteLanguage.text!)."
            self.userOutput.text="chose to send information"
        })
        
        let doNotSendInformationButton = UIAlertAction(title: "Do Not Send Information", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction) in self.selectedAction.text="Thank you!"
            self.userOutput.text="chose not to send information"
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {(alertAction: UIAlertAction) in self.selectedAction.text="Pressed Cancel"
            self.userOutput.text="pressed cancel on actionSheet"
        })
        
        
    actionSheet.addAction(sendInformationButton)
    actionSheet.addAction(doNotSendInformationButton)
    actionSheet.addAction(cancelButton)
    
        
    present(actionSheet, animated: true, completion: nil)
        
    }
 
    //////////////////////////////////////////////////////////

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

