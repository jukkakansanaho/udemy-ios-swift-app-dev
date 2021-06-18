//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storylinePosition = 0
    
    let stories = [
        Story(title: "You see a fork in the road.",
            choice1: "Take a left.",
            choice2: "Take a right."),
        Story(title: "You see a tiger.",
            choice1: "Shout for help.",
            choice2: "Play dead."),
        Story(title: "You find a treasure chest.",
            choice1: "Open it.",
            choice2: "Check for traps.")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        print("UserAnswer: \(userAnswer)")
        
        let answerNumber = checkAnswer(answer: userAnswer)
        
        if answerNumber == 1 {
            storylinePosition += 1
            print("Storylineposition: \(storylinePosition)")
            updateUI(position: storylinePosition)
        } else if answerNumber == 2 {
            storylinePosition += 2
            print("Storylineposition: \(storylinePosition)")
            updateUI(position: storylinePosition)
        } else {
            print("Storylineposition: \(storylinePosition)")
            print("Error: Wrong selection")
        }
    }
    
    func checkAnswer(answer: String) -> Int {
        if answer == stories[storylinePosition].choice1 {
            return 1
        } else {
            return 2
        }
    }
    
    func updateUI(position: Int) {
        storyLabel.text = stories[position].title
        choice1Button.setTitle(stories[position].choice1, for: .normal)
        choice2Button.setTitle(stories[position].choice2, for: .normal)
    }
    
}

