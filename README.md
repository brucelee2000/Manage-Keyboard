# Manage-Keyboard
Methods to dismiss keyboard under different situations
------------------------------------------------------

* **Method 1: keyboard dismissed after hitting return .** 

        // Method 1: call resignFirstResponder by using "textFieldShouldReturn" in UITextFieldDelegate protocal
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            return true
        }
      
* **Method 2: keyboard dismissed after touching other area on the screen.**

        // Method 2: call endEditing in overide function "touchesBegan"
        override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
            self.view.endEditing(true)
        }
    
* **Method 3: keyboard dismissed after button is pressed.**

        @IBAction func buttonPressed(sender: UIButton) {
            labelText.text = textField.text
            
            // Method 3: call resignFirstResponder
            textField.resignFirstResponder()
        }

