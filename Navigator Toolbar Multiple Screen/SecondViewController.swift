//
//  SecondViewController.swift
//  Navigator Toolbar Multiple Screen
//
//  Created by Student04 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let strNumberArray = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    var intIndex = 0
    
    
    @IBAction func decreaseNumberText(_ sender: Any) {
        // if index greater then 0 decrease index by 1
        if intIndex > 0  {
            intIndex -= 1
            
        } else { // if index at 0 ie. first element set to index of last element
            intIndex = strNumberArray.count - 1
        }
        showMessage(strMessage: "strNumberArray[intIndex] ==> \(strNumberArray[intIndex])")
        //numberTextLabel.text = strNumberArray[intIndex]
        showNumberText(intIndex: intIndex)

    }
    
    

    @IBAction func increaseNumberText(_ sender: Any) {
        // if index of element before lass increase index by 1
        // if check at last element will cause because we increase index before using array
        // therefore, index out of bound error occurs
        if intIndex < strNumberArray.count - 1 {
            intIndex += 1
            
        } else {  // if index at last element set to index of 0
            intIndex = 0
        }
        showMessage(strMessage: "strNumberArray[\(intIndex)]  ==> \(strNumberArray[intIndex])")
        //numberTextLabel.text = strNumberArray[intIndex]
        showNumberText(intIndex: intIndex)

    }
    
    
    @IBOutlet weak var numberTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("This is SecondViewController")
    } // End main method
    
    func showNumberText(intIndex: Int) -> Void {
        numberTextLabel.text = strNumberArray[intIndex]
    }
    
    // Show message on console
    func showMessage(strMessage: String) -> Void {
        print("Message ==> \(strMessage)")
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

} // End class
