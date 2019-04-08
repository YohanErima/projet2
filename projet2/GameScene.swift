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
        let screenWidth:CGFloat  = UIScreen.main.bounds.width
        let screenHeight:CGFloat = UIScreen.main.bounds.height
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition=0
        addChild(background)
        
        player = SKSpriteNode(imageNamed : "paul")
        player.zPosition=1
        player.position = CGPoint(x: player.size.width/2, y: player.size.height/2 + 65 )
        
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
    func moveDown(){
        let moveAction:SKAction = SKAction.moveBy(x: 0, y: -100, duration: 1)
        player.run(moveAction)
    }
    func touchDown(atPoint pos : CGPoint) {
        if ( pos.y > 0 ){
            
        }else {
            moveDown()
        }    }
    func touchMoved(atPoint pos : CGPoint) {
        
    }
    func touchUp(atPoint pos : CGPoint) {
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            self.touchDown(atPoint: t.location(in: self))
            
            break
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
}
