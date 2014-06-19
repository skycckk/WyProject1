//
//  ControlFlow.swift
//  Swift practice1
//
//  Created by Wayne Huang on 6/19/14.
//  Copyright (c) 2014 Wayne Huang. All rights reserved.
//

import Foundation

class ControlFlow
{
    func printExample()
    {
        println("----Control Flow----")
        var answer = 0
        for _ in 1...3
        {
            answer++
        }
        println(answer)
        
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs
        {
            println("\(animalName) has \(legCount) legs")
        }
        
        for character in "ABC"
        {
            println(character)
        }
        
        // C-style for
        for var index = 0; index < 3; index++
        {
            println("index is \(index)")
        }
        
        // Switch: No Implicit Fallthrough
        //  The entire switch statement finished its execution as soon as the first matching switch case is completed, without requiring an explicit break statement.
        
        let count = 3000000
        var naturalCount: String
        switch count
        {
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...99999999:
            naturalCount = "millions and millions of "
        default:
            naturalCount = "DEFAULT"
        }
        println("There are \(naturalCount)")
        
        // Switch with Tuples
        // use underscore (_) identifier to match any possible value.
        let somePoint = (-1, 1)
        switch somePoint
        {
        case (0, 0):
            println("(0, 0) is at the origin")
        case (_, 0):
            println("(\(somePoint.0), 0) is on the x-axis")
        case (-2...2, -2...2):
            println("\(somePoint.0), \(somePoint.1) is inside the box")
        default:
            println("(\(somePoint.0), \(somePoint.1)) is out of box")
        }
        
        // Switch with value binding
        // In below example, default in not needed to make since case let(x ,y) match all values
        let anotherPoint = (2, 10)
        switch anotherPoint
        {
        case (let x, 0):
            println("on the x-axis with an x value of \(x)")
        case (0, let y):
            println("on the y-axis with a y value of \(y)")
        case let (x, y):
            println("somewhere else at (\(x), \(y))")
        }
        
        // Switch with Where
        // Where: to check for additional conditions
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint
        {
        case let (x, y) where x == y:
            println("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            println("(\(x), \(y)) is on the line x == -y")
        case let (x ,y):
            println("some arbitrary point")
        }
        
        // Switch with Fallthrough
        // NOTE: fallthrough doesn't check the case condition for the swtich case. It causes code execution to move directly to the statement inside the next case of default block.
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe
        {
        case 2, 3, 5, 7, 11, 17, 19:
            description += " a prime number, and also"
            fallthrough
//        case 10, 15:
//            description += " NONONOON"
        default:
            description += " an integer"
        }
        println(description)
        
        // Labeled Statements
        // NOTE: if break statement didn't use gameLoop label, it would break out of the switch statement, not the while statement.
        let finalSquare = 25
        var board = Int[](count: finalSquare + 1, repeatedValue: 0)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[14] = -08
        var square = 0
        var diceRoll = 0
        
        gameLoop: while square != finalSquare
        {
            if ++diceRoll == 7 {diceRoll = 1}
            switch square + diceRoll
            {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                println("new square: \(newSquare)")
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
            }
        }
    }
}
