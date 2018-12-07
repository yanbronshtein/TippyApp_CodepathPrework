//
//  ViewController.swift
//  TippyV2
//
//  Created by Yaniv Bronshtein on 12/6/18.
//  Copyright © 2018 Yaniv Bronshtein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.25]
        
        //If the field is nil then set default to 0
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex] //Use array to choice tip percentage
        let total  = bill + tip
        tipLabel.text = String(format: "$%0.2f", tip) //Format to 2 decimal places using 0.2f
        totalLabel.text = String(format: "$%0.2f", total)
    }
    
}

