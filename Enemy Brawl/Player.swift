//
//  Player.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name: String = "Player"
    private var _inventory: [String] = []
    
    var name: String {
        get {
            return _name
        }
    }
    
    var inventory: [String] {
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        self._name = name
    }
}
