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

    func palindrones(min: Int, max: Int) -> Int? {
        var results = Set<Int>()

        for lhs in (min..<max) {
            for rhs in (min..<max) {
                let value = lhs * rhs

                if value.isPalindrone {
                    results.insert(value)
                }
            }
        }

        return results.max()
    }

    func smallestMultiple(min: Int, max: Int) -> Int {
        var number = max
        var i = 0

        let clamp = max - min + 1

        repeat {
            for n in min...max {
                if number.isMultiple(of: n) {
                    i += 1
                } else {
                    break
                }
            }

            if i != clamp {
                i = 0
                number += 1
            }

        } while i != clamp

        return number
    }

    func sumOfSquares(range: CountableClosedRange<Int>) -> Int {
        let numbers: [Int] = Array(range)

        return numbers
            .map { Int(pow(Double($0), 2)) }
            .sum()
    }

    func squareOfSum(range: CountableClosedRange<Int>) -> Int {
        let numbers: [Int] = Array(range)
        let sum = numbers.sum()

        return Int(pow(Double(sum), 2))
    }
}
