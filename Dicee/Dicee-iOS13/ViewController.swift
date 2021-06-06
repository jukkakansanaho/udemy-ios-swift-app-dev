//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // NOTE: Use "let" fot variable that don't change (a constant)
        // and "var" foir variable that change
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        // NOTE: Can use int.random() to select a random number
        // diceImageView1.image = diceArray[Int.random(in: 0...5)]
        // diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        // ...OR use Array.randomElement() to select a random element from an array
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
    }
}

