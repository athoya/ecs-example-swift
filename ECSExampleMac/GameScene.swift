//
//  GameScene.swift
//  ECSExampleMac
//
//  Created by Athoya on 29/08/23.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let node = SKShapeNode(rectOf: CGSize(width: 20, height: 20))
        node.fillColor = .green
        node.position = CGPoint(x: 400, y: 200)
        addChild(node)
    }
    
}
