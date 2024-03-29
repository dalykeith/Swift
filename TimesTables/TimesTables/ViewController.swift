//
//  ViewController.swift
//  TimesTables
//
//  Created by Keith Daly on 31/03/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 20
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default,reuseIdentifier: "Cell")
        let timesTable = Int(sliderValue.value * 20)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        return cell
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

