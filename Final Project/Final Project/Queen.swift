//
//  Queen.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Queen : Piece {
    
    override init(color: String) {
        super.init(color: color)
        name = "Queen"
    }
    
    override func canMove(startX: Int, startY: Int, endX: Int, endY: Int) -> Bool {
        if (startX == endX) {
            if (startY != endY) {
                return true
            }
        }
        
        if (startY == endY) {
            if (startX != endX) {
                return true
            }
        }
        
        if (abs(endY - startY) == abs(endX - startX)) {
            return true
        }
        return false
    }
}