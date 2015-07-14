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
        var delay = CCActionDelay(duration: 0.05)
        var callBlock = CCActionCallBlock(block: {self.removeFromParent()})
        runAction(CCActionSequence(array: [delay, callBlock]))
    }
}