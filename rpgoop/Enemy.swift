//
//  Enemy.swift
//  rpgoop
//
//  Created by Amr Sami on 1/25/16.
//  Copyright © 2016 Amr Sami. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger","Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    var image: String {
        return "enem1"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot [rand]
        }
        
        return nil 
    }
    
}