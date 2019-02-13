//
//  8.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    
    func toLowerCase(_ str: String) -> String {
        var word = String()
        for i in str.utf8{
            var i = i
            if i >= 65 && i <= 90 {
                word.append(Character(UnicodeScalar(i + 32)))
            }
            else {
                word.append(Character(UnicodeScalar(i)))
            }
        }
        return word
    }
}

