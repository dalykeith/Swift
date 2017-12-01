//
//  ViewController.swift
//  Hello World
//
//  Created by Keith Daly on 25/02/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        
        print("Button tapped")
        label.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Keith!")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

