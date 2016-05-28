//
//  Bishop.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Bishop : Piece {
    
    override init(color: String) {
        super.init(color: color)
        
        name = "Bishop"
    }
    
    override func canMove(startX: Int, startY: Int, endX: Int, endY: Int) -> Bool {
        if (abs(endY - startY) == abs(endX - startX)) {
            return true
        }
    return false
    }
}