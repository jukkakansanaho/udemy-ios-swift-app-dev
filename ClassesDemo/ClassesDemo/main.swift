//
//  main.swift
//  ClassesDemo
//
//  Created by Jukka Kansanaho on 22.6.2021.
//

let skeleton = Enemy()
print("Enemy health: \(skeleton.health)")
skeleton.move()
skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

print()
let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")
dragon.move()
dragon.attack()
