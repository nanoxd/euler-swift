import Foundation

final class Euler {
    func naturalNumbers(clamp: Int, multiplesOf multiples: Int...) -> [Int] {
        return Array(multiples.reduce(Set<Int>()) { (nums, multiple) in
            var nums = nums
            let multipliers = (1..<clamp).filter { $0 % multiple == 0 }
            return nums.union(multipliers)
        })

//        return Array(multiples
//            .reduce(into: Set<Int>()) { (nums: inout Set<Int>, multiple: Int) in
//                var nums = nums
//                let multipliers = (0...clamp).filter { $0 % multiple == 0 }
//                nums = nums.union(multipliers)
//        })
    }
}
