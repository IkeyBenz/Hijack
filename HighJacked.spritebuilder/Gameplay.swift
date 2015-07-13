//
//  Gameplay.swift
//  HighJacked
//
//  Created by Ikey Benzaken on 7/9/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Gameplay: CCNode, CCPhysicsCollisionDelegate {
    weak var positionOne: CCNode!
    weak var gamePhysicsNode: CCPhysicsNode!
    weak var enemy: Enemy!
//    var helicopter: Helicopter?
    var helicopters: [Helicopter] = []
    
    func didLoadFromCCB() {
        println("didLoadFromCCB")
        
        animationManager.runAnimationsForSequenceNamed("HelicopterPosition")
        userInteractionEnabled = true
        
        var helicopter = CCBReader.load("Helicopter") as! Helicopter?
        gamePhysicsNode.addChild(helicopter)
        helicopters.append(helicopter!)
        
        println("NEW GAME")
        
        gamePhysicsNode.collisionDelegate = self
        gamePhysicsNode.debugDraw = true
     
    }
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        for helicopter in helicopters {
            var shot = CCBReader.load("Shot2") as! Shot
            shot.position = touch.locationInWorld()

            gamePhysicsNode.addChild(shot)
            
        }
    }
    
    func ccPhysicsCollisionBegin(pair: CCPhysicsCollisionPair!, shot: Shot!, enemy: CCSprite!) -> Bool {
        println("Shot hit!")
        if !shot.hasHit {
            enemy.removeFromParent()
        }
        
        
        return true
    }
    
    
   
    
    

   
        
        
        
        
    
}