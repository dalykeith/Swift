//
//  ViewController.swift
//  Cat Years
//
//  Created by Keith Daly on 25/02/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var catAgeTextField: UITextField!

    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var catAge = Int(catAgeTextField.text!)!
        
        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) in cat years"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hey Keith")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

