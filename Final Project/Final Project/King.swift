//
//  King.swift
//  Final Project
//
//  Created by Lok on 14/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class King : Piece {
    
    override init(color:String) {
        super.init(color:color)
        name = "King"
        
    }
    
    override func canMove(startX: Int, startY: Int, endX: Int, endY: Int) -> Bool {
        
        
        if (startX - endX <= 1) {
            if (startY - endY <= 1) {
                return true }
        }
        
        return false
    }
}
