//
//  3.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var anArray = A
        var resultArray = [Int]()
        var newArray = [[Int]]()
        for i in anArray {
            var someArray = i
            someArray.reverse()
            resultArray = someArray
            for i in stride (from: 0, to: resultArray.count, by: 1) {
                if resultArray[i] == 0 {
                    someArray[i] = 1
                }
                else {
                    someArray[i] = 0
                }
            }
            newArray.append(someArray)
        }
        return newArray
    }
}
