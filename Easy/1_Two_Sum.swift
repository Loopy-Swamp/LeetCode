//
//  1_Two_Sum.swift
//  Easy
//
//  Created by Glen on 2022/10/16.
//

import Foundation

// MARK: - lists24
class Solution {
    func twoSum( nums: [Int],  target: Int) -> [Int] {
        let result : Int = target

        for i in 0..<nums.count {
            let value = result - nums[i]

            let index : Int = returnResultValue(nums , value , i)

            if index != -1 { return [i,index] }
        }
        return nums
    }

    func returnResultValue ( nums : [Int] , reminder : Int ,_ currentIndex : Int) -> Int
    {
        for z in 0..<nums.count {
            let _value = reminder
            
            if _value == nums[z] && currentIndex != z {
                return  z
            }
        }
        return -1
    }
}

// MARK: - Eunbin Seo
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...nums.count {
            for j in i+1..<nums.count {
                if ( nums[i] + nums[j] == target ) { return [i,j] }
            }
        }
        return [0,0]
    }
}

// MARK: - Glen
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, j) in nums.enumerated() {
            let diff = target - j
            
            if let n = dict[diff] {
                return [i, n]
            }
            dict[j] = i
        }
        return []
    }
}

// MARK: - KJW
