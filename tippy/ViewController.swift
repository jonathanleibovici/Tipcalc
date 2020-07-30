//
//  ViewController.swift
//  tippy
//
//  Created by Jonathan Leibovici on 7/29/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    

    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amount
        //let is like a constant
        //?? means if its not valid from the text to the left it will make what the user input to 0
        let bill = Double(billField.text!) ?? 0
        
        
        //calculate the tip and total
        let tipPercentage = [0.15 , 0.18 , 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex ]
        let total = bill + tip
        
        
       // update the tip & total label
        //$%f will replace what is in side
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

 
