//
//  GameplayScene.swift
//  Jack The Giant
//
//  Created by rafael rivera on 4/1/17.
//  Copyright © 2017 rafael rivera. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene {
    
    
    var center: CGFloat?;
    var canMove =  false;
    var moveLeft = false;
    var player: Player?;
    
    override func didMove(to view: SKView) {
        center = (self.scene?.size.width)! / (self.scene?.size.height)!
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        managePlayer();
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location  = touch.location(in: self)
            
            
            if  location.x > center! {
                moveLeft = false
            } else {
                moveLeft = true
            }
        }
        canMove = true
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove = false;
    }
    
    func managePlayer() {
        if canMove {
            player?.movePlayer(moveLeft: moveLeft)
        }
    }
    
    
}
