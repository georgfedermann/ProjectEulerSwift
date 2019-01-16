//
//  main.swift
//  ProjectEulerProblem1
//
//  Created by Georg Federmann on 14.01.19.
//  Copyright © 2019 Poorman's Castle. All rights reserved.
//

import Foundation

func multipleOf3And5Client(){
    let upperLimitExclusive:Int = 1_000;
    let base1:Int = 3;
    let base2:Int = 5;
    
    print("Starting calculation");
    var startTime = CFAbsoluteTimeGetCurrent();
    let domain:Range = 1..<upperLimitExclusive;
    print("Approach O1: The sum of all multiples of 3 and 5 in the interval \(domain) is \(MultiplesOf3And5.calculateResultO1(domain:domain)), took \(CFAbsoluteTimeGetCurrent()-startTime) to calculate.");
    startTime = CFAbsoluteTimeGetCurrent();
    let sum:Int = MultiplesOf3And5.calculateResultO0(upperLimitExclusive: upperLimitExclusive, base1: base1, base2: base2);
    print("Approach O0: The sum of all multiples of 3 and 5 less than \(upperLimitExclusive) is \(sum), took \(CFAbsoluteTimeGetCurrent() - startTime) to calculate.");
}

func fibonacciNumbersClient(){
    EvenFibonacciNumbers.sumUpEvenFibonacciNumbersLessThan4Millions();
}

multipleOf3And5Client();
fibonacciNumbersClient();
