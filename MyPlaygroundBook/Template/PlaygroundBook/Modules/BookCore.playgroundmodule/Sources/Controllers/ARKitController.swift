//
//  ARKitController.swift
//  BookCore
//
//  Created by Ronaldo Gomes on 16/04/21.
//

import Foundation
import UIKit
import PlaygroundSupport
import ARKit
import SceneKit

public class ARKitController: LiveView, PlaygroundLiveViewMessageHandler, ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: ARSCNView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene(named: "asserts.scnassets/Voyager.scn")!
        
        scene.rootNode.position = SCNVector3(0.1, 0, -0.1)
        scene.rootNode.childNodes.first?.position.z = -0.5
        //scene.rootNode.light?.type = SCNLight.LightType.ambient
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
}
