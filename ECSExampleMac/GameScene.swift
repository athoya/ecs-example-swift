//
//  GameScene.swift
//  ECSExampleMac
//
//  Created by Athoya on 29/08/23.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    
    var entityManager: EntityManager!
    
    override func didMove(to view: SKView) {
        entityManager = EntityManager(scene: self)
        
        let playerEntity = PlayerEntity()
        if let spriteComponent = playerEntity.component(ofType: SpriteComponent.self) {
            spriteComponent.node.position = CGPoint(x: 400, y: 200)
        }
        entityManager.add(entity: playerEntity)
    }
    
    
}
