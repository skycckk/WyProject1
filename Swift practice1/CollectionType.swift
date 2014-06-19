//
//  CollectionType.swift
//  Swift practice1
//
//  Created by Wayne Huang on 6/18/14.
//  Copyright (c) 2014 Wayne Huang. All rights reserved.
//

import Foundation

class CollectionType
{
    func printExample()
    {
        var shoppingList: String[] = ["Eggs", "Milk"]
        // or
        // var shoppingList = ["Eggs", "Milk"]
        
        shoppingList.append("Flour")
        shoppingList += "Baking Powder"
        shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
        
        var firstItem = shoppingList[0]
        shoppingList[0] = "Six eggs"
        
        println("shopping list has \(shoppingList.count) items")
        shoppingList[4...6] = ["Bananas", "Apples"]
        println("shopping list has \(shoppingList.count) items")
        shoppingList.insert("Maple Syrup", atIndex: 0)
        println("shopping list has \(shoppingList.count) items")
        
        for (index, value) in enumerate(shoppingList)
        {
            println("Item \(index + 1): \(value)")
        }
        
        // Creating and Initializing an Array
        var someInt = Int[]()
        someInt.append(3)
        someInt = []
        
        var threeDoubles = Double[](count: 3, repeatedValue: 0)
        var anotherThreeeDoubles = Array(count: 3, repeatedValue: 2.5)
        var sixDoubles = threeDoubles + anotherThreeeDoubles
        for value in sixDoubles
        {
            print("\(value) ")
        }
        println()
        
        
        // Dictionaries
        var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
        println("The dictionary of airports contains \(airports.count) items.")
        airports["LHR"] = "London"
        airports["LHR"] = "London Heathrow"
        
        if let oldValue = airports.updateValue("Dublin International", forKey: "DUB")
        {
            println("The old value for DUB was \(oldValue)")
        }
        
        airports["APL"] = "Apple International"
        airports["APL"] = nil
        
        if let removeValue = airports.removeValueForKey("DUB")
        {
            println("The removed airport's name is \(removeValue)")
        }
        else
        {
            println("The airports dictonary does not contain a value of DUB")
        }
        
        for (airportCode, airportName) in airports
        {
            println("\(airportCode): \(airportName)")
        }
        
        for airportCode in airports.keys
        {
            println("Airport code: \(airportCode)")
        }
        
        for airportName in airports.values
        {
            println("Airport name: \(airportName)")
        }
        
        let airportCodes = Array(airports.keys)
        let airportNames = Array(airports.values)
        
        println(airportCodes)
        println(airportNames)
        
        // Creating an Empty Dictionary
        var namesOfIntegers = Dictionary<Int, String>()
        namesOfIntegers[16] = "Sixteen"
        namesOfIntegers = [:]
        
        var testDict: Dictionary<Int, String> = [123: "abc", 456: "zzz"]
        println(testDict)
        testDict[789] = "ccc"
        testDict.updateValue("bbb", forKey: 456)
        println(testDict)
    }
}
