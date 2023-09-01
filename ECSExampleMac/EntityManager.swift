//
//  EntityManager.swift
//  ECSExampleMac
//
//  Created by Athoya on 31/08/23.
//

import Foundation
import SpriteKit
import GameplayKit

class EntityManager {
    
    let scene: SKScene
    var entities = Set<GKEntity>()
    
    lazy var componentSystem: [GKComponentSystem] = {
        let playerAgentSystem = GKComponentSystem(componentClass: PlayerAgentComponent.self)
        let enemyAgentSystem = GKComponentSystem(componentClass: EnemyAgentComponent.self)
        return [playerAgentSystem, enemyAgentSystem]
    }()
    
    init(scene: SKScene) {
        self.scene = scene
    }
    
    func add(entity: GKEntity) {
        entities.insert(entity)
        
        if let spriteComponent = entity.component(ofType: SpriteComponent.self) {
            scene.addChild(spriteComponent.node)
        }
        
        componentSystem.forEach { system in
            system.addComponent(foundIn: entity)
        }
    }
    
    func getPlayerEntity() -> GKEntity? {
        return entities.first { entity in
            entity is PlayerEntity
        }
    }
    
    func update(_ deltaTime: TimeInterval) {
        componentSystem.forEach { system in
            system.update(deltaTime: deltaTime)
        }
    }
}
