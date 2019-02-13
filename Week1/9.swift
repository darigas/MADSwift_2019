//
//  9.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let word = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
        if String(word.lowercased().reversed()) == String(word.lowercased()){
            return true
        }
        else {
            return false
        }
    }
}
