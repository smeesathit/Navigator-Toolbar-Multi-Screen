//
//  ViewController.swift
//  Navigator Toolbar Multiple Screen
//
//  Created by Student04 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var intNumber = 1
    
    
    // Handle increaseNumber button
    @IBAction func increaseNumber(_ sender: Any) {
        showMessage(strMessage: "increaseNumber clicked !")
        
        intNumber += 1
        showNumber(intNumber: intNumber)
        
        // numberLabel.text = String(intNumber)
    }
    
    // Handle decreaseNumber button
    @IBAction func decreaseNumber(_ sender: Any) {
        showMessage(strMessage: "decreaseNumber clicked !")

        intNumber -= 1
        showNumber(intNumber: intNumber)

        // numberLabel.text = String(intNumber)
    }
    
    // Handle resetNumber button
    @IBAction func resetNumber(_ sender: Any) {
        showMessage(strMessage: "resetNumber clicked!")
        
        intNumber = 1
        showNumber(intNumber: intNumber)

        // numberLabel.text = String(intNumber)
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // End Main method
    
    func showNumber(intNumber: Int) -> Void {
        let strNumber = String(intNumber)
        numberLabel.text = strNumber
    }
    // Show message on console
    func showMessage(strMessage: String) -> Void {
        print("Message ==> \(strMessage)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

} // End class

