//
//  ViewController.swift
//  Enemy Brawl
//
//  Created by Shivam Sharma on 5/14/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chest: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player(name: "DirtyLaundry21", hp: 110, attackPower: 20)
        generateRandomEnemy()
        
        playerHpLabel.text = "\(player.hp) HP"
        enemyHpLabel.text = "\(enemy.hp) HP"
        
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPower: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPower: 15)
        }
        
        enemyImage.isHidden = false
        enemyHpLabel.text = "\(enemy.hp) HP"
    }
    
    @IBAction func onChestTapped(_ sender: UIButton) {
        chest.isHidden = true
        printLabel.text = chestMessage
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTapped(_ sender: UIButton) {
        if enemy.attempAttack(attackPower: player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLabel.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(item: loot)
            chestMessage = "\(player.name) found \(loot)"
            chest.isHidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.isHidden = true
        }
    }
}

