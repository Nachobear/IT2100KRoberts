//
//  Scene2ViewController.swift
//  Lab10-MultipleScenes
//
//  Created by user127310 on 4/6/18.
//  Copyright © 2018 Kelsey Roberts. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {
    
    @IBOutlet weak var nameMessage: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        nameMessage.text = "Hello, " + (presentingViewController as! ViewController).name.text! + "!"
        super.viewWillAppear(animated)
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
