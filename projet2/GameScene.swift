//
//  GameScene.swift
//  projet2
//
//  Created by etudiant on 02/04/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ground = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        createGrounds()
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        moveGrounds()
    
    }
    func createGrounds() {
        for i in 0...3 {
            
            let ground = SKSpriteNode(imageNamed: "lol")
            ground.name = "Ground"
            ground.size = CGSize(width: (self.scene?.size.width)!, height:  (self.scene?.size.height)!)
            ground.anchorPoint = CGPoint(x: 0.5, y: 0.5 )
            ground.position = CGPoint(x: CGFloat(i) * ground.size.width, y: -(self.frame.size.height / 1.5))
            
            self.addChild(ground)
        }
    }
    func moveGrounds() {
        
        self.enumerateChildNodes(withName: "Ground", using: ({(node, Error) in
            node.position.x -= 2
            
            if node.position.x < -((self.scene?.size.width)!) {
                node.position.x += (self.scene?.size.width)! * 3
            }
        }))
    }
}
