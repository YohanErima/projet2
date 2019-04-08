//
//  GameViewController.swift
//  projet2
//
//  Created by etudiant on 02/04/2019.
//  Copyright © 2019 etudiant. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
    var backgroundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*if let view = self.view as! SKView? {
         // Load the SKScene from 'GameScene.sks'
         if let scene = SKScene(fileNamed: "GameScene") {
         // Set the scale mode to scale to fit the window
         scene.scaleMode = .aspectFill
         
         // Present the scene
         view.presentScene(scene)
         }
         
         view.ignoresSiblingOrder = true
         
         view.showsFPS = true
         view.showsNodeCount = true
         }*/
        
    }
    
    
    override func viewWillLayoutSubviews() {
        
        let audioFileURL = Bundle.main.path(forResource: "gamra", ofType:"mp3")
        do {
            backgroundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioFileURL!))
            
        }
        catch{
            print(error)
        }
        backgroundPlayer.play()
        let skView:SKView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        let scene:SKScene = GameScene.init(size: skView.bounds.size)
        scene.scaleMode = SKSceneScaleMode.aspectFill
        skView.presentScene(scene)
        
    }
    
        
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
