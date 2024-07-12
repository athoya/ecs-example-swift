//
//  MovementComponent.swift
//  ECSExampleMac
//
//  Created by Athoya on 01/09/23.
//

import GameplayKit

class PlayerAgentComponent: GKAgent2D {
    
    init(speed: Float, radius: Float, maxSpeed: Float, maxAcceleration: Float) {
        super.init()
        self.speed = speed
        self.radius = radius
        self.maxSpeed = maxSpeed
        self.maxAcceleration = maxAcceleration
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
    }
}
