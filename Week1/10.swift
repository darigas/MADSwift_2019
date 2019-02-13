//
//  10.swift
//  
//
//  Created by Dariga Akhmetova on 2/13/19.
//

import Foundation
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count != 0 else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
        
        let distance = haystack.count - needle.count
        for i in 0...distance {
            let start = haystack.index(haystack.startIndex, offsetBy: i)
            let end = haystack.index(haystack.startIndex, offsetBy: i + needle.count)
            if haystack[start..<end] == needle {
                return start.encodedOffset
            }
        }
        return -1
    }
}
