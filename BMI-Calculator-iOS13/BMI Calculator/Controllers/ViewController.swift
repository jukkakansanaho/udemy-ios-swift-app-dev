//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        heightLabel.text = "\( round(sender.value * 100) / 100 )m"
        heightLabel.text = String(format: "%.2fm", sender.value)

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        weightLabel.text = "\( round(sender.value) / 10)Kg"
//        weightLabel.text = String(Int(sender.value)) + "Kg"
        weightLabel.text = String(format: "%.0fKg", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = height / pow(height, 2)
        print("Height: \(height) | Weight: \(weight) | BMI: \(bmi)")
    }
    


}

