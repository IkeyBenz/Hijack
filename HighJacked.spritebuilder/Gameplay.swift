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
    
//    weak var enemy: Enemy!
    var helicopters: [Helicopter] = []
    
    func didLoadFromCCB() {
        println("didLoadFromCCB")
        
        animationManager.runAnimationsForSequenceNamed("HelicopterPosition")
        userInteractionEnabled = true
        
        var helicopter = CCBReader.load("Helicopter") as! Helicopter
        gamePhysicsNode.parent.addChild(helicopter)
        helicopters.append(helicopter)
        
        println("NEW GAME")
     
    }
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        for helicopter in helicopters {
            if touch.locationInWorld() == helicopter.position {
                helicopter.makeEnemyDisappear()
            }
        }
    }
        
    

   
        
        
        
        
    
}