//
//  Helicopter.swift
//  HighJacked
//
//  Created by Ikey Benzaken on 7/10/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Helicopter: CCSprite {
    weak var helicopter: CCSprite!
    weak var enemy: CCSprite!
    weak var heliPhysicsNode: CCPhysicsNode!
    
    var stillHasEnemies:Bool = true
    
    var amountOfEnemies = 2
    
    // When an enemy is killed, it will disappear. Then the numberOfEnemies variable will also decrease.
    func makeEnemyDisappear() {
        enemy.removeFromParent()
        amountOfEnemies = amountOfEnemies - 1
    }
    
    
    
    
    
    
}