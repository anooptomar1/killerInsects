//
//  MenuScene.swift
//  killerInsect
//
//  Created by Mac QA Acertum on 11/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//

import SpriteKit
import ARKit

class MenuScene : SKScene {
    
    let titelGame = SKSpriteNode(imageNamed: "Smash-It")
    let startGameBtn = SKSpriteNode(imageNamed: "Start-Game")
    let backGroundImageLeft = SKSpriteNode(imageNamed: "insectBack2")
    let backGroundImageRight = SKSpriteNode(imageNamed: "insectBack3")
    
    
    
    override func didMove(to view: SKView) {
        
        self.view?.scene?.backgroundColor = UIColor.white
        
        backGroundImageLeft.position = CGPoint(x: -view.frame.midX/2, y: 0)
        backGroundImageLeft.size = CGSize(width: backGroundImageLeft.size.width, height: backGroundImageLeft.size.height)
        backGroundImageLeft.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(backGroundImageLeft)
        
        backGroundImageRight.position = CGPoint(x: view.frame.midX/2, y: 0)
        backGroundImageRight.size = CGSize(width: backGroundImageRight.size.width, height: backGroundImageRight.size.height)
        backGroundImageRight.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(backGroundImageRight)
        
        
        titelGame.position = CGPoint(x: 0, y: view.frame.midY*0.7)
        titelGame.size = CGSize(width: titelGame.size.width*2, height: titelGame.size.height*2)
        
        addChild(titelGame)
        
        startGameBtn.position = CGPoint(x: 0, y: 0)
        startGameBtn.name = "startGameBtn"
        startGameBtn.size = CGSize(width: startGameBtn.size.width, height: startGameBtn.size.height)
        
        addChild(startGameBtn)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        
        //Buscamos todos los nodos que han sido tocados
        let hit = nodes(at: location)
        
        if hit.first?.name == "startGameBtn" {
            print("StartGameBtn has been touched")
        }
    }
    


}

