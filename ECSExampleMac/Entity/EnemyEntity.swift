//
//  PlayerEntity.swift
//  ECSExampleMac
//
//  Created by Athoya on 30/08/23.
//

import Foundation
import GameplayKit

class EnemyEntity: GKEntity {
    
    let entityManager: EntityManager!
    
    init(position: CGPoint, entityManager: EntityManager) {
        self.entityManager = entityManager
        super.init()
        
        let node = SKShapeNode(circleOfRadius: 10)
        node.fillColor = .red
        node.position = position
        let spriteComponent = SpriteComponent(sprite: node)
        
        let agentComponent = EnemyAgentComponent(speed: 1, radius: 10, maxSpeed: 1000, maxAcceleration: 1000, entityManager: entityManager)
        agentComponent.delegate = spriteComponent
        
        addComponent(spriteComponent)
        addComponent(agentComponent)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
