//
//  Player.swift
//  rpgoop
//
//  Created by Amr Sami on 1/25/16.
//  Copyright © 2016 Amr Sami. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String] ()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemInventory (item: String) {
        _inventory.append(item)
    }
    
    convenience init (name: String, hp: Int, attackPwr: Int) {
        self.init(startingHP: hp, attackPwr: attackPwr)
        _name = name
    }
    
}