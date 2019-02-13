//
//  6.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var newArray = nums
        var zeros = [Int]()
        var numbers = [Int]()
        for i in newArray{
            if i == 0 {
                zeros.append(i)
            }
            else {
                numbers.append(i)
            }
        }
        nums = numbers + zeros
    }
}
