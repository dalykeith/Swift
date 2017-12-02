//
//  ViewController.swift
//  X and Os
//
//  Created by Keith Daly on 15/04/2016.
//  Copyright © 2016 Thesquaredtriangle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //1= o, 2 = x
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],  [1, 4, 7], [2, 5, 8], [0, 4, 8]]
    
    var gameActive = true
    
    @IBOutlet var playAgainButton: UIButton!
    
    @IBAction func playAgain(_ sender: AnyObject) {
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        activePlayer = 1
        gameActive = true
        
        gameOverLabel.isHidden = true
        gameOverLabel.center = CGPoint(x: gameOverLabel.center.x - 500, y: gameOverLabel.center.y)
        
        playAgainButton.isHidden = true
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
        
        var buttonToClear : UIButton
        for i in 0 ..< 9 {
            buttonToClear = view.viewWithTag(i) as! UIButton
            buttonToClear.setImage(nil,for: UIControlState())
            
        }
        
    }
    @IBOutlet var button: UIButton!
    
    
    @IBOutlet var gameOverLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
    
        if (gameState[sender.tag] == 0 && gameActive == true){
            
            gameState[sender.tag] = activePlayer
            
        if activePlayer == 1 {
            
        
        sender.setImage(UIImage(named: "nought.png"), for: UIControlState())
            activePlayer = 2
            
            
        } else {
            sender.setImage(UIImage(named: "cross.png"), for: UIControlState())
            
            activePlayer = 1
            
            }
            
            for combination in winningCombinations{
                
                if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]){
                    
                    gameActive = false
                    
                    if gameState[combination[0]] == 1{
                        print("Noughts have won!")
                        gameOverLabel.text = "Noughts have won!"
                    }else {
                        //print("Crosses have won!")
                        gameOverLabel.text = "Crosses have won!"
                    }
                    
                    endGame()
                    
                }
            }
            if gameActive == true {
                
            
                gameActive = false
            
                for buttonState in gameState {
                    if buttonState == 0 {
                        gameActive = true
                    
                    
                    }
                }
                if gameActive == false {
                    gameOverLabel.text = "It's a draw!"
                    endGame()
                }
            }
        }
    }
    
    func endGame(){
        gameOverLabel.isHidden = false
        playAgainButton.isHidden = false
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.gameOverLabel.center = CGPoint(x: self.gameOverLabel.center.x + 500, y: self.gameOverLabel.center.y)
            
            self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gameOverLabel.isHidden = true
        gameOverLabel.center = CGPoint(x: gameOverLabel.center.x - 500, y: gameOverLabel.center.y)
        
        playAgainButton.isHidden = true
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

