//
//  SettingsViewController.swift
//  tipMePls
//
//  Created by Duyen Riggs on 3/7/17.
//  Copyright © 2017 Duyen Riggs. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //To retrieve key
        let defaults = UserDefaults.standard
        if let defaultTip = defaults.string(forKey:"setTip"){
            print("Key: " + defaultTip)
        }else{
            //Nothing stored  yet. Set a value.
            defaults.setValue("18%", forKey: "setTip")
            print("Saved defaultTip")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveDefaultTip(_ sender: Any) {
        // print("saveDefault")
        
        // TODO/PLACEHOLDER: upon user change, saved amount
        // Then pass to TipControllerView 
        //
        
        
        let userDefaults = UserDefaults.standard
        let selectedIndex = defaultTipControl.selectedSegmentIndex
        switch (selectedIndex)
        {
        case 0:
            print("18%")
            userDefaults.set(0, forKey: "Key")
            userDefaults.synchronize()
            break;
            
        case 1:
            print("20%")
            userDefaults.set(1, forKey: "Key")
            userDefaults.synchronize()
            break;
        case 2:
            print("25%")
            userDefaults.set(2, forKey: "Key")
            userDefaults.synchronize()
            break;
        default:
            print("end");
        }
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

