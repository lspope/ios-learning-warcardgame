//
//  ViewController.swift
//  WarCardGame
//
//  Created by Leah Pope on 4/18/20.
//  Copyright © 2020 lsp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var leftImageView: UIImageView!
    @IBOutlet var rightImageView: UIImageView!
    
    @IBOutlet var leftScoreLabel: UILabel!
    @IBOutlet var rightScoreLabel: UILabel!
  
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            // Player wins round
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // Computer wins round
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
    }
    
}

