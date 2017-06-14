//
//  ViewController.swift
//  Navigator Toolbar Multiple Screen
//
//  Created by Student04 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Handle increaseNumber button
    @IBAction func increaseNumber(_ sender: Any) {
        showMessage(strMessage: "increaseNumber clicked !")
        
    }
    
    // Handle decreaseNumber button
    @IBAction func decreaseNumber(_ sender: Any) {
        showMessage(strMessage: "decreaseNumber clicked !")
    }
    
    // Handle resetNumber button
    @IBAction func resetNumber(_ sender: Any) {
        showMessage(strMessage: "resetNumber clicked!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // End Main method
    
    // Show message on console
    func showMessage(strMessage: String) -> Void {
        print("Message ==> \(strMessage)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

} // End class

