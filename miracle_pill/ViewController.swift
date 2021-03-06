//
//  ViewController.swift
//  miracle_pill
//
//  Created by Felix Kramer on 13/3/17.
//  Copyright © 2017 Felix Kramer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
  
    @IBOutlet weak var postcodeLabel: UILabel!
    @IBOutlet weak var postcodeText: UITextField!
    
    @IBOutlet weak var cntryLabel: UILabel!
    @IBOutlet weak var cntryText: UITextField!
    
    let states = ["ACT","SA","NSW","NT","QLD","VIC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        //hide the two labels and text fields above the state picker
        postcodeLabel.isHidden = true
        postcodeText.isHidden = true
        cntryLabel.isHidden = true
        cntryText.isHidden = true
        
        
        statePicker.isHidden = false //i.e.unhide the statepicker
        
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // This means that we want one column (i.e. states)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count //how ever many componenets are in the states. thats how many rows we want
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row] //return the relevant row in the state picker
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) //changes the button to whatever is selected in the picker
        statePicker.isHidden = true //re-hide the state picker once selected
        
        //unhide the two labels and text fields above the state picker
        postcodeLabel.isHidden = false
        postcodeText.isHidden = false
        cntryLabel.isHidden = false
        cntryText.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
}

