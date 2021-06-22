//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Jukka Kansanaho on 22.6.2021.
//

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage.")
    }
}
