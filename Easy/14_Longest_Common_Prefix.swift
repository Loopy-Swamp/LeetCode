//
//  14_Longest_Common_Prefix.swift
//  Easy
//
//  Created by TIKE on 2022/11/1.
//
import Foundation

// MARK: - Eunbin Seo
enum Roman : Int {
    case I = 1
    case V = 5
    case X = 10
    case L = 50
    case C = 100
    case D = 500
    case M = 1000
    
    static func toRoman(_ char: Character) -> Int {
        // static - cannot be used as an instance member
        switch char {
        case "I" : return I.rawValue
        case "V" : return V.rawValue
        case "X" : return X.rawValue
        case "L" : return L.rawValue
        case "C" : return C.rawValue
        case "D" : return D.rawValue
        case "M" : return M.rawValue
        default : return 0
        }
    }
} 

class Solution {
    var total = 0 
    var beforeNum = 1001
    // 변수 선언 위치가 전역인지 지역인지 차이로 약간 차이가 있네요? 
    func romanToInt(_ s: String) -> Int {
        s.reversed()
        for i in s {
            let hey = Roman.toRoman(i)
            total += hey
            if (beforeNum < hey) { total -= beforeNum * 2 }
            beforeNum = hey
        }
        return total
    }
}
