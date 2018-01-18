//
//  Scene.swift
//  killerInsect
//
//  Created by Jorge Martinez on 06/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//

import SpriteKit
import ARKit

class Scene: SKScene {
    
    let button = SKSpriteNode(imageNamed: "cancel")

    
    override func didMove(to view: SKView) {
        // Setup your scene here
        button.position = CGPoint(x: view.frame.midX-50, y: view.frame.midY-30)
        button.name = "backButton"
        button.size = CGSize(width: button.size.width * 0.8, height: button.size.height * 0.8)
        
        addChild(button)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        //El reto es eobtener una coordenada 2D a partir de un plano 3D (La pantalla y los graficos)
        //Localizar le primer toque del conjunto de toques
        //Mirar si el toque cae dentro de nuestra vista de AR
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        
        
        //Buscar todos los nodos que han sido tocados por ese toque de usuario
        let hit = nodes(at: location)
        
        if hit.first?.name == "backButton" {
            print("El toque X ha sido en: (\(location.x), \(location.y))")
            
            /*
            let transition = SKTransition.flipHorizontal(withDuration: 0.5)
            let menuScene = MenuScene(size: self.size)
            menuScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            self.view?.presentScene(menuScene, transition: transition)
            */
        }
        
        /*
        guard let sceneView = self.view as? ARSKView else {
            return
        }
        
        // Create anchor using the camera's current position
        if let currentFrame = sceneView.session.currentFrame {
            
            // Create a transform with a translation of 0.2 meters in front of the camera
            var translation = matrix_identity_float4x4
            translation.columns.3.z = -0.2
            let transform = simd_mul(currentFrame.camera.transform, translation)
            
            // Add a new anchor to the session
            let anchor = ARAnchor(transform: transform)
            sceneView.session.add(anchor: anchor)
            
        }
        */
        
    }
    

}


