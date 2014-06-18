//
//  main.swift
//  Swift practice1
//
//  Created by Wayne Huang on 6/15/14.
//  Copyright (c) 2014 Wayne Huang. All rights reserved.
//

import Foundation

println("Hello, World!")

var x = 0.0, y = 0.0, z = 0.0
var friendlyWelcome = "Hello"

println("This current value of friendlyWelcome is \(friendlyWelcome)")

let minValue = UInt8.min
let maxValue = UInt8.max

println("min and max of UInt8 is \(minValue) and \(maxValue)");

// Type Aliases
typealias AudioSample = UInt16
let maxAmplitude = AudioSample.max
println("max amplitude: \(maxAmplitude)")


// Tuple
println("----Tuple----")
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")

let (justStatusCode, _) = http404Error
println("Just status code is \(justStatusCode)")

println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
println("The status code is \(http200Status.statusCode)")
println("The status message is \(http200Status.description)")

// If Statements and Forced Unwrapping and Implicitly Unwrapping
println("----If Statements and Forced Unwrapping----")
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
if convertedNumber
{
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
}
else
{
    println("\(possibleNumber) cound not be converted to an integer")
}

if let actualNumber = possibleNumber.toInt()
{
    println("\(possibleNumber) has an integer value of \(actualNumber)")
}

// nil cannot be used with non-optional constants and variables
var serverResponseCode: Int? = 404

// In Obj-C, nil is a pointer to a non-existent object
// In Swift, nil is not a pointer--it is the absence of a value of a certain type.

let possibleString: String? = "An optional string."
println(possibleString!)
let assumedString: String! = "An implicitly unwrapped optional string"
println(assumedString)

// Floating-Point Remainder Calculations
println("8 % 2.5 = \(8 % 2.5)")

// Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..count
{
    println("Person \(i + 1) is called \(names[i])")
}

let stringExample = StringAndCharacters()
stringExample.printExample()