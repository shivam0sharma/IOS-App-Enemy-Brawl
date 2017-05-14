//
//  Enemy.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        get {
            return ["Rusty Dager", "Cracked Buckler"]
        }
    }
    
    var type: String {
        get {
            return "Grunt"
        }
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        } else {
            return nil
        }
    }
}
