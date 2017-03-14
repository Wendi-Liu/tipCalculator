//
//  ViewController.swift
//  tipCalculator
//
//  Created by Wendi Liu on 3/12/17.
//  Copyright © 2017 Wendi Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var calView: UIView!
    
    let defaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in TipPerField.allValues {
            defaults.set(defaultPer[i.rawValue], forKey: tipPerPrefix + String(i.rawValue))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for i in TipPerField.allValues {
            let tipPer = defaults.double(forKey: tipPerPrefix + String(i.rawValue))
            tipControl.setTitle(String(format: "%0.2f%", tipPer), forSegmentAt: i.rawValue)
        }
        calView.alpha = 0
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.4, animations: {
            self.calView.alpha = 1
        })
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        var tip : Double = 0
        if(tipControl.selectedSegmentIndex == UISegmentedControlNoSegment) {
            tip = 0
        } else {
            let selectedSeg = tipControl.titleForSegment(at: tipControl.selectedSegmentIndex)
            tip = bill * (Double(selectedSeg!.substring(to: selectedSeg!.index(selectedSeg!.endIndex, offsetBy: -1)))!) / 100
        }
        let total = bill + tip
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }

}

