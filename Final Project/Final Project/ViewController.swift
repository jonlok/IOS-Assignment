//
//  ViewController.swift
//  Final Project
//
//  Created by Lok on 14/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textOuput: UITextField!
    var board:[[Piece]] = [[]]
    
    var pieceSelected:Bool = false
    var currentPiece:Piece = Piece(color: "w")
    var currentRow = 0
    var currentCol = 0
    var currentColor = "n/a"
    
    @IBOutlet var squares: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
//        B1.text = "pawn"
  //      B1.setTitle("Pawn", forState: UIControlState.Normal)
        setupModel()
        updateUI()
        
//        board[0][1]
        
    }
    
    @IBAction func squareClicked(sender: UIButton) {
      let tag = sender.tag
      let col = tag % 8
    //    print(col)
       let row1 = tag - col
       let row = row1/8
    //    print(row)
        
        if (!pieceSelected) {
            
            pieceSelected = true
            
            currentPiece = board[row][col]
            currentRow = row
            currentCol = col
            
            currentColor = currentPiece.color
            
        } else {
            
            let target = board[row][col]
            let targetColor = target.color
            
            let canGetThere = currentPiece.canMove(currentRow, startY: currentCol, endX: row, endY: col)
            
            let targetIsSpace = target.name == ""
            
            print(targetColor)
            print(canGetThere)
            print(targetIsSpace)
            
//moving code
            if (targetIsSpace && canGetThere) {
//code for moving piece
                textOuput.text = "move: moving " + currentPiece.name + " to " + target.name
                
                board[row][col] = currentPiece
                board[currentRow][currentCol] = Space(color: "n/a")
                
                
            }
            
// killing code
            if (!targetIsSpace && currentColor != targetColor && canGetThere) {
                print("can kill")
                board[row][col] = currentPiece
                board[currentRow][currentCol] = Space(color:"n/a")
            }
            
//            if (targetIsSpace == false) {
//                print("kill: target destination has a piece")
//            }
//            if (currentColor == targetColor) {
//                print("cannot kill")
//            } else {
//                print("can kill")
//            }
            
//next: move by the other player, where to put?
            pieceSelected = false
        }
        
        updateUI()
    }
    
    func setupModel() {
        
        board.append([])
        board.append([])
        board.append([])
        board.append([])
        board.append([])
        board.append([])
        board.append([])
        board.append([])
        
      // all the row 0 pieces
        
        board[0].append(Rook(color: "b"))
        board[0].append(Knight(color: "b"))
        board[0].append(Bishop(color: "b"))
        board[0].append(Queen(color: "b"))
        board[0].append(King(color: "b"))
        board[0].append(Bishop(color: "b"))
        board[0].append(Knight(color: "b"))
        board[0].append(Rook(color: "b"))
        
        // all row 1 pieces
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        board[1].append(Pawn(color: "b"))
        
        // all row 2 pieces
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        board[2].append(Space(color: "n/a"))
        
        // all row 3 pieces
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        board[3].append(Space(color: "n/a"))
        
        // all row 4 pieces
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        board[4].append(Space(color: "n/a"))
        
        // all row 5 pieces
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        board[5].append(Space(color: "n/a"))
        
        // all row 6 pieces
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        board[6].append(Pawn(color: "w"))
        
        
        // all row 7 pieces
        board[7].append(Rook(color: "w"))
        board[7].append(Knight(color: "w"))
        board[7].append(Bishop(color: "w"))
        board[7].append(Queen(color: "w"))
        board[7].append(King(color: "w"))
        board[7].append(Bishop(color: "w"))
        board[7].append(Knight(color: "w"))
        board[7].append(Rook(color: "w"))
        
    }
    
    func updateUI() {
        var row = 0
        
        while(row < board.count) {
            
            
            var col = 0
            
            while(col < board[row].count) {
                
                print("\(row) \(col)")
                
                let tag = row * 8 + col
                
//                print("tag: \(tag)")
                
//                print(board[row][col].name)
                
                // update the button with that tag
                
                setButtonTitle(tag, text: board[row][col].name, color:board[row][col].color)
                
                
                
                col++
            }
            
            
            row++
        }
    }
    
    func setButtonTitle(tag:Int, text:String, color:String) {
        print(tag)
        print(text)
        
        for square in squares {
            if square.tag == tag {
                square.setTitle(text, forState: .Normal)
                if (color == "b") {
                    square.setTitleColor(UIColor.blackColor(), forState: .Normal)
                } else {
                    square.setTitleColor(UIColor.yellowColor(), forState: .Normal)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

