//
//  344_Reverse_String.swift
//  Easy
//
//  Created by Glen on 2022/10/23.
//

import Foundation

// MARK: - lists24
class Solution {
    func reverseString(_ s: inout [Character]) {
        let filter = s.filter{ $0 != ""}

        return filter.reverse()
    }
}

// MARK: - Eunbin Seo
class Solution {
    func reverseString(_ s: inout [Character]) {
        var k : [Character] = []
        
        for i in 0...s.count-1 {
            var cnt = s.count-1
            k.append(s[cnt-i])
        }
        s = k
    }
}

// MARK: - Glen
class Solution {
    func reverseString_1(_ s: inout [Character]) {
        var start = 0
        var end = s.count - 1
        
        while start < end {
            if s[start] != s[end] {
                s.swapAt(start, end)
            }
            start += 1
            end -= 1
        }
    }
    
    func reverseString_2(_ s: inout [Character]) {
        var temp: [Character] = []

        for char in s {
            temp = "\(char)" + temp
        }
        s = temp
    }
}

// MARK: - KJW
