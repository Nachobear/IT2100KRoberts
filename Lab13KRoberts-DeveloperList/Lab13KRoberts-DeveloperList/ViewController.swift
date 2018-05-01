//
//  ViewController.swift
//  Lab13KRoberts-DeveloperList
//
//  Created by user127310 on 4/30/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let kSectionCount: Int = 2
    let kWebDevSection: Int = 0
    let kMobileDevSection: Int = 1
    
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay", "Tim Burr", "Will Wynn"]
    
    let webDevelopersTitle: [String] = ["Full Stack", "ASP.NET", "PHP", "Node.js, Angular, and React"]
    let mobileDevelopersTitle: [String] = ["iOS with Swift", "iOS and Android", "iOS with Objective-C", "iOS with Swift and Objective-C", "Android", "Ionic"]
    
    let webDevelopersDetails: [String] = ["A full stack developer capable of front-end and back-end development in a Windows environment", "Back-end developer focused on database applications using a variety of DBMSs.", "Several years experience writing PHP with database connectivity using Linux and Windows.", "Newby developer with great demonstration of skills using Node.js and Angular. Some recent work in React."]
    let mobileDevelopersDetails: [String] = ["12 apps developed using Swift and Xcode", "Senior app developer with experience in Androed and iOS development", "Maintains large code base still in Objective-C. Working to learn Swift", "Staff expert in Objective-C. Lead efforts to upgrade from Objective-C to Swift.", "Android expert with experience ranging from days of Eclops to current Android Studio versions.", "Prototyping go-to. Uses Ionic to spin up fast prototypes for all apps."]
    
    
    
    
    //Vv DataSource Methods [4] vV
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return kSectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case kWebDevSection:
            return webDevelopers.count
        case kMobileDevSection:
            return mobileDevelopers.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case kWebDevSection:
            return "Web Developers"
        case kMobileDevSection:
            return "Mobile Developers"
        default:
            return "Unknown"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "devCell")! as UITableViewCell
        switch (indexPath.section) {
        case kWebDevSection:
            cell.textLabel!.text="\(webDevelopers[indexPath.row]) \n\(webDevelopersTitle[indexPath.row])"
        case kMobileDevSection:
            cell.textLabel!.text="\(mobileDevelopers[indexPath.row]) \n\(mobileDevelopersTitle[indexPath.row])"
        default:
            cell.textLabel!.text="Unknown"
        }
        
        let devImage: UIImage=UIImage(named: cell.textLabel!.text!)!
        cell.imageView!.image=devImage
        return cell
        
    }
    
    
    
    //Vv Delegate Method vV
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var popupMessage: String
        
        switch indexPath.section {
        case kWebDevSection:
            popupMessage = "\(webDevelopersTitle[indexPath.row]) Developer\n\n\(webDevelopers[indexPath.row])\n\n\(webDevelopersDetails[indexPath.row])"
        case kMobileDevSection:
            popupMessage = "\(mobileDevelopersTitle[indexPath.row]) Developer\n\n\(mobileDevelopers[indexPath.row])\n\n\(mobileDevelopersDetails[indexPath.row])"
        default:
            popupMessage = "WAZZZAAAAAPPP!!!"
        }
        
        let alertController = UIAlertController(title:"Developer Selected", message: popupMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
        
        
        
        
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

