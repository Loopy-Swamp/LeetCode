//
//  58_Length_Of_Last_Word.swift
//  Easy
//
//  Created by Glen on 2022/10/23.
//

import Foundation

// MARK: - lists24
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arrWord = s.components(separatedBy: " ")

        let arrFilter = arrWord.filter{ $0 != ""}

        let lastString = arrFilter.last as? String ?? ""

        return lastString.length
    }
}

// MARK: - Eunbin Seo
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let v = s.split(separator: " ")
        var cnt = v.count - 1
        
        return v[cnt].count
    }
}

// MARK: - Glen
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let s = Array(s)
        
        var result: Int = 0
        var length: Int = s.count - 1
        
        while length >= 0 && s[length] == " " {
            length -= 1
        }
        
        while length >= 0 && s[length] != " " {
            length -= 1
            result += 1
        }
        
        return result
    }
}

// MARK: - KJW
