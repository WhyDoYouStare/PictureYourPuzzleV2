//
//  GameScene.swift
//  PictureYourPuzzleV2
//
//  Created by  on 9/11/19.
//  Copyright © 2019 Jays apps. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
var backgorund = SKSpriteNode()
var puzzleBackground = SKSpriteNode()
var tile = SKSpriteNode()
    
    override func didMove(to view: SKView)
    {
//        let borderBody = SKPhysicsBody(edgeFrom: CGPoint -300, to: CGPoint 300)
//        borderBody.friction = 0
//        physicsBody = borderBody
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        let background = SKSpriteNode(imageNamed: "background")
        backgorund.physicsBody?.affectedByGravity = false
        background.physicsBody?.allowsRotation = false
        background.physicsBody?.friction = 0
        background.physicsBody?.isDynamic = false
        background.size = CGSize(width: self.frame.width, height: self.frame.height)
        background.zPosition = 1
        addChild(background)
//
        puzzleBackground.size = CGSize(width: 600, height: 600)
        puzzleBackground.position = CGPoint(x: -300, y: -300)
        puzzleBackground.anchorPoint = CGPoint(x: 0, y: 0)
        puzzleBackground.color = UIColor.gray
        puzzleBackground.alpha = CGFloat(0.5)
        puzzleBackground.zPosition = 2
        addChild(puzzleBackground)
//
        addTile(name: "1", point: CGPoint(x: -300, y: 150))
        addTile(name: "2", point: CGPoint(x: -150, y: 150))
        addTile(name: "3", point: CGPoint(x:    0, y: 150))
        addTile(name: "4", point: CGPoint(x: 150, y: 150))
        addTile(name: "5", point: CGPoint(x: -300, y: 0))
        addTile(name: "6", point: CGPoint(x: -150, y: 0))
        addTile(name: "7", point: CGPoint(x: 0, y: 0))
        addTile(name: "8", point: CGPoint(x: 150, y: 0))
        addTile(name: "9", point: CGPoint(x: -300, y: -150))
        addTile(name: "10", point: CGPoint(x: -150, y: -150))
        addTile(name: "11", point: CGPoint(x: 0, y: -150))
        addTile(name: "12", point: CGPoint(x: 150, y: -150))
        addTile(name: "13", point: CGPoint(x: -300, y: -300))
        addTile(name: "14", point: CGPoint(x: -150, y: -300))
        addTile(name: "15", point: CGPoint(x:  0, y: -300))
        
      
    }
    
    func addTile(name: String, point: CGPoint)
    {
        let tile = SKSpriteNode(imageNamed: name)
        tile.size = CGSize(width: 150, height: 150)
        tile.position = point
        tile.anchorPoint = CGPoint(x: 0, y: 0)
        tile.zPosition = 3
        addChild(tile)
    }
}
