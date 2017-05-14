//
//  DevilWizard.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}
