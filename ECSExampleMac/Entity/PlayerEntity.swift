//
//  PlayerEntity.swift
//  ECSExampleMac
//
//  Created by Athoya on 30/08/23.
//

import Foundation
import GameplayKit

class PlayerEntity: GKEntity {
    
    override init() {
        super.init()
        let node = SKShapeNode(rectOf: CGSize(width: 20, height: 20))
        node.fillColor = .blue
        let spriteComponent = SpriteComponent(sprite: node)
        
        let agentComponent = PlayerAgentComponent(speed: 1, radius: 10, maxSpeed: 100, maxAcceleration: 100)
        agentComponent.delegate = spriteComponent
        
        addComponent(spriteComponent)
        addComponent(agentComponent)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
