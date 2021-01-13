//
//  Game.swift
//  Bullshy
//
//  Created by P.M. Student on 1/5/21.
//

import Foundation

struct Game {
    var Target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValu: Int) -> Int{
       100 - abs(sliderValu - Target)
    }
    
}
