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
    
    init(scene: SKScene) {
        self.scene = scene
    }
    
    func add(entity: GKEntity) {
        entities.insert(entity)
        
        if let spriteComponent = entity.component(ofType: SpriteComponent.self) {
            scene.addChild(spriteComponent.node)
        }
    }
    
}
