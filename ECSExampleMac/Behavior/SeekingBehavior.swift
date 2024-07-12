//
//  SeekingComponent.swift
//  ECSExampleMac
//
//  Created by Athoya on 01/09/23.
//

import GameplayKit

class SeekingBehavior: GKBehavior {
    
    init(toSeek: GKAgent) {
        super.init()
        setWeight(10, for: GKGoal(toSeekAgent: toSeek))
    }
    
}
