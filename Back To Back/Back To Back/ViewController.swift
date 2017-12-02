//
//  ViewController.swift
//  Back To Back
//
//  Created by Keith Daly on 23/05/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(sender: AnyObject) {
        player.play()
    }
    @IBOutlet var volumeSlider: UISlider!
    
    
    @IBAction func adjustVolume(sender: AnyObject) {
    }
    
    @IBOutlet var scrubSlider: UISlider!
    
    @IBAction func scrub(sender: AnyObject) {
    }
    @IBAction func pause(sender: AnyObject) {
        player.pause()
    }
    
    @IBAction func stop(sender: AnyObject) {
        player.pause()
        
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!))
            
        }
        catch {
            //it did'nt work
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!))
        
            } catch {
                    //it did'nt work
                    }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

