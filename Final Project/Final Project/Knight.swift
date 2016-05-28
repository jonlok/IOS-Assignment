//
//  Knight.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Knight : Piece {
    
    
    override init(color:String) {
        super.init(color: color)
        name = "Knight"
    }
    
    override func canMove(startX: Int, startY: Int, endX: Int, endY: Int) -> Bool {
        // not complete here
        // white piece
        if (color == "b") {
            if (startY - endY == 1) {
                if (endX - startX == 2) {
                    return true
                }
            }
        }
        //black piece
        if (color == "w") {
            if (startY - endY == 1) {
                if (startX - endX == 2) {
                    return true
                }
            }
        }
        
        
        return false
    }
}