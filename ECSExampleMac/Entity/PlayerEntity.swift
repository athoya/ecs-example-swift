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
        addComponent(spriteComponent)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
