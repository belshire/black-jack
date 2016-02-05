//
//  Card.swift
//  BJack
//
//  Created by Elshire, Blake on 2/5/16.
//  Copyright © 2016 Elshire, Blake. All rights reserved.
//

import Foundation

struct Card {
    enum Suit: String {
        case Spades = "Spades", Hearts = "Hearts", Diamonds = "Diamonds", Clubs = "Clubs"
    }
    
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        
        struct Values {
            let first: Int, second: Int?
        }
        
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    let rank: Rank, suit: Suit
}
