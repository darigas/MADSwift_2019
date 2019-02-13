//
//  2.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var evenArray = [Int]()
        var oddArray = [Int]()
        var anArray = A
        for number in anArray {
            if number % 2 == 0 {
                evenArray.append(number)
            }
            else {
                oddArray.append(number)
            }
        }
        return evenArray + oddArray
    }
}
