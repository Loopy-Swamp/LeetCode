//
//  14_Longest_Common_Prefix.swift
//  Easy
//
//  Created by TIKE on 2022/11/1.
//
import Foundation

// MARK: - Eunbin Seo
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        // 1. 배열 중 가장 짧은 단어를 찾는다.
        var shortestString = ""
        var ssCnt = 200
        var resString = ""
        
        if(strs.count == 1) {
            return strs[0]
        }
        
        for i in strs {
           if(i.count > 0 && i.count <= ssCnt) { 
               ssCnt = i.count 
               shortestString = i
           }
        }
        
        // 2. 그 문자의 순서대로 완탐 ㅎ..
        
        for j in shortestString {
            var res = 0
            var compareString = resString + String(j)
            
           for i in strs {
              if(i.hasPrefix(compareString)){ 
                res += 1    
              }
              
               if (res == strs.count) { 
                resString += String(j) 
              }
           }      
        }
        
        return resString
    }
}
