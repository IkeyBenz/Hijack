//
//  Shot.swift
//  HighJacked
//
//  Created by Ikey Benzaken on 7/13/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Shot: CCNode, CCPhysicsCollisionDelegate {
    var hasHit = false
    
    func didLoadFromCCB(){
//        run some animation
//        remove from parent
//        **instead**
//        delay .2
//        remove from parent
        
        var delay = CCActionDelay(duration: 0.2)
        var callBlock = CCActionCallBlock(block: {self.removeFromParent()})
        runAction(CCActionSequence(array: [delay, callBlock]))
    }
}