//
//  ViewController.swift
//  Manage Keyboard
//
//  Created by Yosemite on 1/11/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonPressed(sender: UIButton) {
        labelText.text = textField.text
        
        // Method 3: call resignFirstResponder
        textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Method 1: call resignFirstResponder by using "textFieldShouldReturn" in UITextFieldDelegate protocal
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    // Method 2: call endEditing in overide function "touchesBegan"
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


}

