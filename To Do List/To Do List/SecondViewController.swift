//
//  SecondViewController.swift
//  To Do List
//
//  Created by Keith Daly on 31/03/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(_ sender: AnyObject) {
        
        toDoList.append(item.text!)
        item.text = ""
        
        UserDefaults.standard.set(toDoList, forKey: "toDoList")
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches:Set<UITouch>, with even: UIEvent?){
    self.view.endEditing(true)
    
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField!) -> Bool {
        item.resignFirstResponder()
        return(true)
        
    }
}

