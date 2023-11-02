//
//  Rook.swift
//  ChessApp
//
//  Created by elly on 11/1/23.
//

import Foundation

class Rook: Piece {
    private(set) var point: Int = 5
    private(set) var pieceColorType: PieceColorType
    
    init(pieceColorType: PieceColorType) {
        self.pieceColorType = pieceColorType
    }
    
    func showIcon() -> String {
        return pieceColorType == .black ? "♜" : "♖"
    }
    
    func movablePosition(_ currentPosition: Position) -> [Position] {
        return currentPosition.topList() + currentPosition.bottomList() + currentPosition.leftList() + currentPosition.rightList()
    }
}