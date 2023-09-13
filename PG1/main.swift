//
//  main.swift
//  PG1
//
//  Created by NMU Student on 9/13/23.
//

import Foundation

print("Enter a numerator: ")
let numerator = Int(readLine()!)!
print("Enter a denominator: ")
let denominator = Int(readLine()!)!

var remainderArray: [Int] = [Int](repeating: -1, count: denominator)
var quotientArray: [Int] = []

var counter: Int = 0

var hasRepeats: Int = 0
var numberOfNonRepeat: Int = 0

var currentQuotient: Int = 0
var currentRemainder: Int = 0

if(numerator < denominator){
    currentRemainder = numerator
} else if(numerator > denominator) {
    currentRemainder = numerator % denominator
}
remainderArray[currentRemainder] = counter

//Loop starts here
while(true){
    counter += 1
    
    currentQuotient = (currentRemainder * 10) / denominator
    quotientArray.append(currentQuotient)
    
    currentRemainder = (currentRemainder * 10) % denominator
    if(remainderArray[currentRemainder] != -1){
        hasRepeats = 1
        numberOfNonRepeat = remainderArray[currentRemainder]
        break;
    } else if(currentRemainder == 0){
        break;
    }
    remainderArray[currentRemainder] = counter
}

print("Your answer is:")
let wholeNumber = numerator/denominator
print("\(wholeNumber).", terminator: "")

if(hasRepeats == 1 && numerator != denominator){
    for i in 0..<numberOfNonRepeat {
        print(quotientArray[i], terminator: "")
    }
    print("(", terminator: "")
    for i in numberOfNonRepeat..<quotientArray.count {
        print(quotientArray[i], terminator: "")
    }
    print(")", terminator: "")
} else {
    for i in 0..<quotientArray.count {
        print(quotientArray[i], terminator: "")
    }
}

