//
//  StringsAndCharacters.swift
//  Swift practice1
//
//  Created by Wayne Huang on 6/18/14.
//  Copyright (c) 2014 Wayne Huang. All rights reserved.
//

import Foundation

class StringAndCharacters
{   
    func printExample()
    {
        // String Literal
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        let dollorSign = "\x24"
        let blackHeart = "\u2665"
        let sparklingHeart = "\U0001F496"
        println("wiseWords: \(wiseWords)")
        println("dollorSign: \(dollorSign), blackHeart: \(blackHeart), sparkingHeart: \(sparklingHeart)")
        
        // Strings Are Value Type
        // This differs from that of NSString in Cocoa. NSString is copied by reference, for Swift, it's by value
        
        // String interpolation
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        println(message)
        
        // Prefix and Sufix Equality
        let romeoAndJuliet = [
            "Act 1 Scene 1: aaaa place",
            "Act 1 Scene 2: bbbb mansion",
            "Act 2 Scene 1: cccc place",
            "Act 3 Scene 1: dddd cell",
            "Act 3 Scene 2: eeee cell"]
        
        var act1SceneCount = 0
        for scene in romeoAndJuliet
        {
            if scene.hasPrefix("Act 1")
            {
                ++act1SceneCount
            }
        }
        println("There are \(act1SceneCount) scene in Act 1")
        
        var cellCount = 0
        var placeCount = 0
        for scene in romeoAndJuliet
        {
            if scene.hasSuffix("cell")
            {
                ++cellCount
            }
            else if scene.hasSuffix("place")
            {
                ++placeCount
            }
        }
        println("\(cellCount) cell scenes; \(placeCount) place scenes")
        println("original string: \(romeoAndJuliet[0]) \nuppercase string: \(romeoAndJuliet[0].uppercaseString)")
        
        // Unicode
        let dogString = "Dog!\U0001F436"
        println("dogString: \(dogString)")
        for codeUnit in dogString.utf8
        {
            print("\(codeUnit) ")
        }
        println()
        
        for codeUnit in dogString.utf16
        {
            print("\(codeUnit) ")
        }
        println()
        
        for codeUnit in dogString.unicodeScalars
        {
            print("\(codeUnit) ")
        }
        println()
    }
}