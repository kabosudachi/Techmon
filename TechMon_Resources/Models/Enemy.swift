//
//  Enemy.swift
//  TechDra
//
//  Created by Master on 2015/03/24.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

import UIKit

class Enemy: NSObject {
    
    var name: String!
    var maxHP: Float!
    var currentHP: Float!
    var attackPoint: Float!
    var defencePoint: Float!
    var speed: Float!
    var image: UIImage!
    
    override init() {
        super.init()
        
        name = "きのこ星人"
        maxHP = 1000
        currentHP = 1000
        attackPoint = 50
        defencePoint = 10
        speed = 1.2
        image = UIImage(named: "kinoko.png")
    }
}
