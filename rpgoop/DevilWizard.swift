//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Amr Sami on 1/25/16.
//  Copyright © 2016 Amr Sami. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand","Dark Amulet","Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
    override var image: String {
        return "enem1"
    }

    
}