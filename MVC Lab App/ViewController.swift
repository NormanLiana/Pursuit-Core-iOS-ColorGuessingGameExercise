//
//  ViewController.swift
//  MVC Lab App
//
//  Created by Liana Norman on 7/30/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var newGameLabel: UIButton!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var model = RGB()
    var score = 0
    var highScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomColor()
        gameOverLabel.isHidden = true
        newGameLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func updateScore() {
        score += 1
        label.text = score.description
    }
    
    func updateHighScore() {
        if score > highScore {
            highScoreLabel.text = score.description
        } else {
            highScoreLabel.text = highScore.description
        }
    }

    func generateRandomColor() {
       model = RGB()
        background.backgroundColor = model.randomColor()
    }
    
    func resetGame() {
        label.text = score.description
        gameOverLabel.isHidden = false
        newGameLabel.isHidden = false
    }
    
    @IBAction func generatesRandColor(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if model.highestColor() == UIColor.red {
                updateScore()
                generateRandomColor()
            } else {
                resetGame()
                updateHighScore()
                
            }
        case 1:
            if model.highestColor() == UIColor.green {
                updateScore()
                generateRandomColor()
            } else {
                resetGame()
                updateHighScore()
            }
        case 2:
            if model.highestColor() == UIColor.blue {
                updateScore()
                generateRandomColor()
            } else {
                resetGame()
                updateHighScore()
            }
        case 3:
            score = 0
            resetGame()
            generateRandomColor()
            gameOverLabel.isHidden = true
            newGameLabel.isHidden = true
        default:
            print ("something is wrong")
        }
       
    }
    
    
    

}

