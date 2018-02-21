import Foundation

final class Euler {
    func naturalNumbers(clamp: Int, multiplesOf multiples: Int...) -> [Int] {
        return Array(multiples.reduce(Set<Int>()) { (nums, multiple) in
            let multipliers = (1..<clamp).filter { $0 % multiple == 0 }
            return nums.union(multipliers)
        })
    }

    func primeFactors(for number: Int) -> [Int] {
        guard number >= 2 else {
            return []
        }

        var factors = [Int]()
        var currentNumber = number
        var divisor = 2

        while currentNumber > 1 {
            while currentNumber % divisor == 0 {
                factors.append(divisor)
                currentNumber = currentNumber / divisor
            }

            divisor += 1
        }

        if currentNumber > 1 {
            factors.append(currentNumber)
        }

        return factors
    }
}
