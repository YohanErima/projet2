//
//  GameScene.swift
//  projet2
//
//  Created by etudiant on 02/04/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var player:SKSpriteNode = SKSpriteNode()
    var LastYieldTimeInterval:TimeInterval = TimeInterval()
    var LastUpdateTimerInterval:TimeInterval = TimeInterval()
    var PointRecuperer:Int = 0
    
    override func didMove(to view: SKView) {
       
    }
    override init(size:CGSize){
        super.init(size: size)
        self.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        player = SKSpriteNode(imageNamed : "cube")
        
        player.position = CGPoint(x: self.frame.size.width, y: player.size.height/2 + 20)
        
        self.addChild(player)
        
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        self.physicsWorld.contactDelegate = self
        
    }
    func addNote(){
        
        var note:SKSpriteNode?
        note?.physicsBody = SKPhysicsBody(rectangleOf: (note?.size)!)
        note?.physicsBody?.isDynamic=true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
       
    }
}
