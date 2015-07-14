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
    weak var enemy: Enemy!
    weak var heliPhysicsNode: CCPhysicsNode!
    
    var screenWidth = UIScreen.mainScreen().bounds.width
    var screenHeight = UIScreen.mainScreen().bounds.height
    
    
    // Set starting point and initial scale value for helicopter.
    
    

    var stillHasEnemies: Bool = true
    
    var amountOfEnemies = 2
    
    func didLoadFromCCB(){
    }
    
    // Move Helicopter
    func moveHelicopter() {
        
        var move: CCActionMoveTo!
        var flip = CCActionCallBlock(block: {self.flipX/* = -self.flipX*/})
        if position.x > screenWidth {
            move = CCActionMoveTo(duration: 10, position: ccp(CGFloat(0 - Double(contentSizeInPoints.width) * Double(scale)), position.y))
            
        } else {
            move = CCActionMoveTo(duration: 10, position: ccp(CGFloat(Double(screenWidth) + Double(contentSizeInPoints.width / 2) * Double(scale)), position.y))
        }
        runAction(CCActionSequence(one: move, two: flip))
    }
    
    // When an enemy is killed, it will disappear. Then the numberOfEnemies variable will also decrease.
    func makeEnemyDisappear() {
        enemy.removeFromParent()
        amountOfEnemies = amountOfEnemies - 1
    }
    
    
    
}