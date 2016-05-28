//
//  Rook.swift
//  Final Project
//
//  Created by Lok on 14/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Rook : Piece {
    
    
    override init(color: String) {
        super.init(color: color)
        name = "Rook"
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
        
        
        return false
    }
}