//
//  ViewController.swift
//  How Many Fingers Game
//
//  Created by Keith Daly on 02/03/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(10))
        if diceRoll == userGuessTextField.text{
            resultLabel.text = "You're right!"
            
        }else{
            resultLabel.text = "Wrong! It was a " + diceRoll
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

