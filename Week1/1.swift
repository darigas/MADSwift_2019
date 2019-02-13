//
//  1.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var newArray = A
        var resultArray = [Int]()
        for i in stride(from: 0, to: newArray.count, by: 1 ) {
            let number = newArray[i] * newArray[i]
            resultArray.append(number)
        }
        resultArray.sort()
        return resultArray
    }
}
