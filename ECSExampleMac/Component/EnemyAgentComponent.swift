//
//  MovementComponent.swift
//  ECSExampleMac
//
//  Created by Athoya on 01/09/23.
//

import GameplayKit

class EnemyAgentComponent: GKAgent2D {
    
    var entityManager: EntityManager?
    
    init(speed: Float, radius: Float, maxSpeed: Float, maxAcceleration: Float, entityManager: EntityManager) {
        super.init()
        self.speed = speed
        self.radius = radius
        self.maxSpeed = maxSpeed
        self.maxAcceleration = maxAcceleration
        self.entityManager = entityManager
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        print(position)
//        let wander = GKBehavior(goal: GKGoal(toWander: 10000), weight: 1000)
//        behavior = wander
        if let playerAgent = entityManager?.getPlayerEntity()?.component(ofType: PlayerAgentComponent.self) {
            behavior?.removeAllGoals()
            behavior = SeekingBehavior(toSeek: playerAgent)
        }
        super.update(deltaTime: seconds)
    }
}
