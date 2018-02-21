import Foundation

final class Euler {
    func naturalNumbers(clamp: Int, multiplesOf multiples: Int...) -> [Int] {
        return Array(multiples.reduce(Set<Int>()) { (nums, multiple) in
            let multipliers = (1..<clamp).filter { $0 % multiple == 0 }
            return nums.union(multipliers)
        })
    }
}
