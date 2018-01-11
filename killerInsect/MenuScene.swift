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
    
    let startGameBtn = SKSpriteNode(imageNamed: "Start-Game")
    
    override func didMove(to view: SKView) {
        
        self.view?.scene?.backgroundColor = UIColor.blue
        
        startGameBtn.position = CGPoint(x: 0, y: view.frame.midY)
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

