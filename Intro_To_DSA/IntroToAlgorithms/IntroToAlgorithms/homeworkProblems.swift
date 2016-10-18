//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros
//The third element is the number of positive values.

//Questions: Are we only to account for three values, and must each sign be present?
func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var tuple: (neg: Int, zero: Int, pos: Int) = (0,0,0)
    var posCount = 0
    var zeroCount = 0
    var negCount = 0
    
    for elem in myArr {
        switch elem {
        case elem where elem > 0:
            posCount += 1
            tuple.pos = posCount
        case elem where elem == 0:
            zeroCount += 1
            tuple.zero = zeroCount
        case elem where elem < 0:
            negCount += 1
            tuple.neg = negCount
        default:
            tuple = (0,0,0)
        }
    }
    
    return tuple
}



//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    let sortedArr = myArr.sorted(by: <)
    return sortedArr[1]
}



//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    if x % 2 == 0 {
        return false
    } else {
        return true
    }
}


//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var newString = ""
    if s.contains(String(c)) {
        newString = s.replacingOccurrences(of: String(c), with: "")
    }
    return newString
}



//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString = ""
    for c in arr {
        for char in s.characters {

            if char == c {
                newString = s.replacingOccurrences(of: String(c), with: "")
            }
        }
        
    }
    return newString
}




