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
    
}
