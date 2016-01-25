//
//  Character.swift
//  rpgoop
//
//  Created by Amr Sami on 1/25/16.
//  Copyright © 2016 Amr Sami. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
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
    
    init(startingHP: Int, attackPwr: Int) {
        self._attackPwr = attackPwr
        self._hp = startingHP
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
}
