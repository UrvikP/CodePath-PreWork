//
//  ViewController.swift
//  Prework
//
//  Created by Urvik Patel on 8/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip ammount by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip amount label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

