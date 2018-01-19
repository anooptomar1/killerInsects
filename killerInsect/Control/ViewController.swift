//
//  ViewController.swift
//  killerInsect
//
//  Created by Jorge Martinez on 06/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//

import UIKit
import SpriteKit
import ARKit

class ViewController: UIViewController, ARSKViewDelegate, GameSceneViewDelegate {

    
    
    @IBOutlet var sceneView: ARSKView!
    

    var gameSceneProperty : Scene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        gameSceneProperty = Scene(size: sceneView.bounds.size)
        gameSceneProperty.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        gameSceneProperty.scaleMode = .aspectFill
        gameSceneProperty.gameSceneDelegate = self
        
        //Load the SKScene from 'Scene.sks'
        sceneView.presentScene(gameSceneProperty)
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    // MARK: - ARSKViewDelegate
    
    func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode? {
        // Create and configure a node for the anchor added to the view's session.
        let labelNode = SKLabelNode(text: "👾")
        labelNode.horizontalAlignmentMode = .center
        labelNode.verticalAlignmentMode = .center
        return labelNode;
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
 
    // MARK: Method of Delegate of Scene
    func endGame() {
        print("End Game")
        self.dismiss(animated: true, completion: nil)

    }
    

}
