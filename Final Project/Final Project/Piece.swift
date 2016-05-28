//
//  Piece.swift
//  Final Project
//
//  Created by Lok on 14/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import Foundation

class Piece {
    var name = "piece"
//    var isWhite:Bool = true
    var color = "w"
    
    init(color:String) {
        self.color = color
    }
    
    func canMove(startX:Int, startY:Int, endX:Int, endY:Int) -> Bool{
        return true;
    }
}