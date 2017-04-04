//
//  Player.swift
//  Jack The Giant
//
//  Created by rafael rivera on 4/4/17.
//  Copyright © 2017 rafael rivera. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
  
    func movePlayer(moveLeft: Bool) {
        
        if moveLeft {
            self.position.x = self.position.x - 7;
        } else {
            self.position.x = self.position.x + 7;

        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
