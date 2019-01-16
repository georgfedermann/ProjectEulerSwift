//
//  Problem1.swift
//  ProjectEulerProblem1
//
//  Created by Georg Federmann on 14.01.19.
//  Copyright © 2019 Poorman's Castle. All rights reserved.
//

import Foundation

// here I will implement some algorithm that will for me calculate the sum
// of all numbers being multiples of 3 or 5 in [1,1000].
// hooray!
class MultiplesOf3And5 {
    
    // here the domain of the problem is specified. Defaults to 1...1000
    // but hey, feel free to redefine it
    static func calculateResultO1(domain:Range<Int>)->Int {
        var sum:Int = 0
        for i in domain {
            if i % 3 == 0 || i % 5 == 0 {
                sum += i;
            }
        }
        
        return sum;
    }
    
    // solve it with an O(1) algorithm
    static func calculateResultO0(upperLimitExclusive:Int, base1:Int, base2:Int)->Int {
        let sum1 = calculateSumOfMultiplesLessThenUpperLimitExclusive(upperLimitExclusive: upperLimitExclusive, base: base1);
        let sum2 = calculateSumOfMultiplesLessThenUpperLimitExclusive(upperLimitExclusive: upperLimitExclusive, base: base2);
        let sum3 = calculateSumOfMultiplesLessThenUpperLimitExclusive(upperLimitExclusive: upperLimitExclusive, base: base1*base2);
        return (sum1 + sum2) - sum3;
    }
    
    // solve it with an O(0) algorithm
    static func calculateSumOfMultiplesLessThenUpperLimitExclusive(upperLimitExclusive:Int, base:Int)->Int {
        let sumLimit = (upperLimitExclusive-1) / base;
        print("Integer divisin of \(upperLimitExclusive) / \(base) = \(sumLimit).");
        return sumLimit * (sumLimit + 1) * base / 2;
    }
    
}
