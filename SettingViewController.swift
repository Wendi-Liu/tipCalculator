//
//  SettingViewController.swift
//  tipCalculator
//
//  Created by Wendi Liu on 3/12/17.
//  Copyright © 2017 Wendi Liu. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tipPerField1: UITextField!
    @IBOutlet weak var tipPerField2: UITextField!
    @IBOutlet weak var tipPerField3: UITextField!
    let defaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tipPerField1.tag = TipPerField.tipPerField1.rawValue
        tipPerField2.tag = TipPerField.tipPerField2.rawValue
        tipPerField3.tag = TipPerField.tipPerField3.rawValue
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

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for view in view.subviews as [UIView] {
            if let tipPerField = view as? UITextField {
                let tipPer = defaults.double(forKey: tipPerPrefix + String(tipPerField.tag))
                tipPerField.placeholder = String(format: "%0.2f", tipPer )
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for view in view.subviews as [UIView] {
            if let tipPerField = view as? UITextField {
                defaults.set(Double(tipPerField.text!) ?? defaultPer[tipPerField.tag], forKey: tipPerPrefix + String(tipPerField.tag))
            }
        }
        defaults.synchronize()
    }
}
