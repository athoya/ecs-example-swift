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
    
    var lastUpdateTimeInterval = TimeInterval(0.0)
    
    override func didMove(to view: SKView) {
        entityManager = EntityManager(scene: self)
        
        let playerEntity = PlayerEntity()
        if let spriteComponent = playerEntity.component(ofType: SpriteComponent.self) {
            spriteComponent.node.position = CGPoint(x: 200, y: 200)
        }
//        playerEntity.addAgent()
        entityManager.add(entity: playerEntity)
        
        let enemyEntity = EnemyEntity(position: CGPoint(x: 600, y: 200), entityManager: entityManager)
        
        entityManager.add(entity: enemyEntity)
    }
    
    override func update(_ currentTime: TimeInterval) {
        if lastUpdateTimeInterval == 0.0 {
            lastUpdateTimeInterval = currentTime
            return
        }
        let deltaTime = currentTime - lastUpdateTimeInterval
        lastUpdateTimeInterval = currentTime
        
        entityManager.update(deltaTime)
    }
}
