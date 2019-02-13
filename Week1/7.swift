//
//  7.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func reverseString(_ s: inout [Character]) {
        var str = [Character]()
        for character in s {
            str = "\(character)" + str
        }
        s = str
    }
}
