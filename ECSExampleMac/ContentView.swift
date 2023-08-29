//
//  ContentView.swift
//  ECSExampleMac
//
//  Created by Athoya on 29/08/23.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var body: some View {
        SpriteView(scene: GameScene(size: CGSize(width: 800, height: 400)), debugOptions: [.showsFPS, .showsNodeCount, .showsPhysics]).ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
