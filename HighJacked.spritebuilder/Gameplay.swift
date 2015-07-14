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
    var helicopter = CCBReader.load("Helicopter") as! Helicopter?
//    var helicopter: Helicopter?
    
    var helicopters: [Helicopter] = []
    
    func didLoadFromCCB() {
        userInteractionEnabled = true
        
        gamePhysicsNode.addChild(helicopter)
        
        // Set initial scale and position of helicpters.
        helicopter?.position = CGPoint(x: UIScreen.mainScreen().bounds.width + helicopter!.contentSizeInPoints.width/2, y: 180)
        helicopter?.moveHelicopter()
        helicopters.append(helicopter!)
        
        println("NEW GAME")
        
        gamePhysicsNode.collisionDelegate = self
        gamePhysicsNode.debugDraw = false
     
    }
    let delta: CCTime = 300000
    override func update(delta: CCTime) {
        helicopter?.moveHelicopter()
    }
    
   

    
    
   
    
    

   
        
        
        
        
    
}