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
    }
    override func viewWillAppear(_ animated: Bool) {
        //To retrieve key
        let defaults = UserDefaults.standard
        let intDefaultIndex = defaults.integer(forKey: "setTip")
        defaultTipControl.selectedSegmentIndex = intDefaultIndex
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveDefaultTip(_ sender: Any) {
        // print("saveDefault")

        let userDefaults = UserDefaults.standard
        let selectedIndex = defaultTipControl.selectedSegmentIndex
        
        userDefaults.set(selectedIndex, forKey: "setTip")
        userDefaults.synchronize()
        
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

