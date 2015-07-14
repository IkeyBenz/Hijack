//
//  Enemy.swift
//  HighJacked
//
//  Created by Ikey Benzaken on 7/10/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Enemy: CCSprite {
    var shot = CCBReader.load("Shot2")
    func didLoadFromCCB(){
        userInteractionEnabled = true
    }
    func remove() {
        removeFromParent()
    }
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        println("touched the enemy")
        //add an explosion to scene
        addChild(shot)
        scheduleOnce("remove", delay: 0.1)
        
    }
    
}