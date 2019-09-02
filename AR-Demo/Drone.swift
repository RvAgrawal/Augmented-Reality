//
//  Drone.swift
//  AR-Demo
//
//  Created by Ravi Agrawal on 31/08/19.
//  Copyright © 2019 Ravi Agrawal. All rights reserved.
//

import UIKit
import ARKit

class Drone: SCNNode {
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "Drone_dae.scn") else { return }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }
}
