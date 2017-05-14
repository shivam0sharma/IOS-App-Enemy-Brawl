//
//  Kimara.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attempAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attempAttack(attackPower: attackPower)
        } else {
            return false
        }
    }
}
