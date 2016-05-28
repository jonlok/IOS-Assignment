//
//  Pawn.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Pawn : Piece {
    
    override init(color: String) {
        super.init(color: color)
        name = "Pawn"
    }
    
    override func canMove(startX: Int, startY: Int, endX: Int, endY: Int) -> Bool {
        
        print(startX)
        print(startY)
        print(endX)
        print(endY)
        
   // white piece
        if (color == "b") {
            if (startY == endY) {
                if (endX - startX == 1) {
                    return true
                }
            }
        }
    //black piece
        if (color == "w") {
            if (startY == endY) {
                if (startX - endX == 1) {
                    return true
                }
            }
        }
    
       
    
        return false
    }
}