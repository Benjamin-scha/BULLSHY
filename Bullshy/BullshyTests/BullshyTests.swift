//
//  BullshyTests.swift
//  BullshyTests
//
//  Created by P.M. Student on 1/6/21.
//

import XCTest
@testable import Bullshy

class BullshyTests: XCTestCase {
    
    var game: Game!
    
    
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    
     func testScorePositive(){
        let guess = game.Target + 5
        let score = game.points(sliderValu: guess)
         
         XCTAssertEqual(score, 95)
         
     }
    
     func testScoreNegative(){
        let guess = game.Target - 5
        let score = game.points(sliderValu: guess)
         
         XCTAssertEqual(score, 95)
         
     }
    
}
