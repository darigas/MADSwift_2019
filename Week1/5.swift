//
//  5.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var anArray = nums
        var count = anArray.count / 2
        var begin = [Int]()
        var end = [Int]()
        var max = 0
        for i in 0..<count {
            begin.append(anArray[i])
        }
        for i in count..<anArray.count {
            end.append(anArray[i])
        }
        end.reverse()
        print(end)
        print(begin)
        for i in 0..<begin.count {
            max += min(begin[i], end[i])
        }
        return max
    }
}
