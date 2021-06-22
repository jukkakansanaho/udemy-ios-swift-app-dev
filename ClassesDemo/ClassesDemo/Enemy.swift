//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Jukka Kansanaho on 22.6.2021.
//

class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
