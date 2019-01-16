//
//  EvenFibonacciNumbers.swift
//  ProjectEulerSwift
//
//  Created by Georg Federmann on 16.01.19.
//  Copyright © 2019 Poorman's Castle. All rights reserved.
//

import Foundation
// You are the 652869th person to have solved this problem.
// This problem had a difficulty rating of 5%. The highest difficulty rating you have solved remains at 5%.
class EvenFibonacciNumbers {
    
    static func sumUpEvenFibonacciNumbersLessThan4Millions(){
        let fibonacciSequence:FibonacciSequence = FibonacciSequence();
        var fibonacciNumber:FibonacciElement = fibonacciSequence.getNextTerm();
        var sum:Int = 0;
        while fibonacciNumber.value <= 4_000_000 {
            sum += fibonacciNumber.value % 2 == 0 ? fibonacciNumber.value : 0;
            fibonacciNumber = fibonacciSequence.getNextTerm();
        }
        print("Exited sequence at element \(fibonacciNumber.index), sum is \(sum).");
    }
    
}

class FibonacciSequence {
    var term1 = 0;
    var term2 = 1;
    var counter = 0;
    
    func getNextTerm()->FibonacciElement {
        let result = term1;
        term1 = term2;
        term2 = result + term1;
        counter += 1;
        return FibonacciElement(idx:counter, value:result);
    }
}

class FibonacciElement {
    let index:Int;
    let value:Int;
    
    init(idx:Int, value:Int){
        index = idx;
        self.value = value;
    }
}
