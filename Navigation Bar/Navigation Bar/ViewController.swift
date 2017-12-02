//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Keith Daly on 08/03/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0

    func result(){
        
        time += 1
        
        print(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = Timer()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

