//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    
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
    
    var storylinePosition = 0
    
    mutating func nextStory(userChoice : String) {
        
        let answerNumber = checkAnswer(answer: userChoice)
        
        if answerNumber == 1 {
            storylinePosition += 1
            print("Storylineposition: \(storylinePosition)")
        } else if answerNumber == 2 {
            storylinePosition += 2
            print("Storylineposition: \(storylinePosition)")
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
    
    func getStorylinePosition() -> Int{
        return storylinePosition
    }
    
//    func getStory () -> [String : String] {
//        return stories[storylinePosition]
//    }
    
    func getStoryTitle() -> String {
        return stories[storylinePosition].title
    }
    
    func getStoryChoice1() -> String {
        return stories[storylinePosition].choice1
    }
    
    func getStoryChoice2() -> String {
        return stories[storylinePosition].choice2
    }
    
}
