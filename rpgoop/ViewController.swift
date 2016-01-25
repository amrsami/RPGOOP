//
//  ViewController.swift
//  rpgoop
//
//  Created by Amr Sami on 1/25/16.
//  Copyright © 2016 Amr Sami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHPLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHPLbl.text = "\(player.hp) HP"
        enemyHpLbl.text = "\(enemy.hp) HP"
    }
    
    func generateRandomEnemy() {
        
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHP: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHP: 60, attackPwr: 15)
        }
        
        enemyImg.image = UIImage(named: enemy.image)
        enemyImg.hidden = false
    }

    @IBAction func onChestPressed(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
    }
  
    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsucsessful"
        }
        
        if let loot = enemy.dropLoot() {
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
            player.addItemInventory(loot)
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            enemyImg.hidden = true
            printLbl.text = "Killed \(enemy.type)"
        }
    
    }
    
}

