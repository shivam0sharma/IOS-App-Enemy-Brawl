//
//  Character.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    
    func attempAttack(attackPower: Int) -> Bool {
        self._attackPower -= attackPower
        
        return true
    }
}
