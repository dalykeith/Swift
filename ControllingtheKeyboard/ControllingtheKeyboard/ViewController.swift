//
//  ViewController.swift
//  ControllingtheKeyboard
//
//  Created by Keith Daly on 31/03/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var text: UITextField!
    
    @IBOutlet var label: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        label.text = text.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldREturn(_ textField: UITextField!)  -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

