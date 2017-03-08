//
//  ViewController.swift
//  tipMePls
//
//  Created by Duyen Riggs on 3/6/17.
//  Copyright © 2017 Duyen Riggs. All rights reserved.
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
    override func viewWillAppear(_ animated: Bool) {
        //To retrieve key
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "setTip")
        tipControl.selectedSegmentIndex = intValue
        //debug test ---> print(intValue)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Function disables soft keyboard 
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTipAmount(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        //debug test --> print("calculateTipAmount")
    }
    


}

