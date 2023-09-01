//
//  SpriteComponent.swift
//  ECSExampleMac
//
//  Created by Athoya on 30/08/23.
//

import GameplayKit
import SpriteKit

class SpriteComponent: GKSKNodeComponent {
    
    override init() {
        super.init()
    }
    
    init(sprite: SKNode) {
        super.init()
        node = sprite
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func agentWillUpdate(_ agent: GKAgent) {
        if let agent2d = agent as? GKAgent2D {
            agent2d.position = vector_float2(x: Float(node.position.x), y: Float(node.position.y))
        }
    }
    
    override func agentDidUpdate(_ agent: GKAgent) {
        if let agent2d = agent as? GKAgent2D {
            node.position = CGPoint(x: Double(agent2d.position.x), y: Double(agent2d.position.y))
        }
    }
}
