import Foundation

extension Sequence where Element: Numeric {
    /// Produces the sum of all items in sequence
    func sum() -> Element {
        return reduce(0, +)
    }
}

private var primeCache: Set<Int> = []

extension Int {
    /// Returns true iff self is a multiple of n
    func isMultiple(of n: Int) -> Bool {
        guard self != 0 else { return false }
        return self % n == 0
    }

    /// Returns true iff self is a prime number
    var isPrime: Bool {
        if self < 2 {
            return false
        }

        if self == 2 || self == 3 {
            return true
        }

        if isMultiple(of: 2) {
            return false
        }

        if primeCache.contains(self) {
            return true
        }

        if self == 5 || self == 7 {
            return true
        }

        let squareRoot = Int(sqrt(Float(self)))
        let upperBound = squareRoot

        for i in 3...upperBound {
            if isMultiple(of: i) {
                return false
            }
        }

        primeCache.insert(self)
        return true
    }

    var squared: Int {
        return self ** 2
    }

    var divisors: [Int] {
        guard self != 0 else { return [] }

        return (1...self)
            .filter { self.isMultiple(of: $0) }
    }

    var factorial: Int {
        return (1...self)
            .reduce(1, *)
    }

    static func **(lhs: Int, rhs: Int) -> Int {
        return Int(pow(lhs.double, rhs.double))
    }

    var double: Double { return Double(self) }

    /// Returns the greatest common divisor using the Euclidean algorithm.
    func gcd(_ i: Int) -> Int {
        guard i != 0 else {
            return self
        }

        return i.gcd(self % i)
    }
}

extension Int64 {
    static func **(lhs: Int64, rhs: Int64) -> Int64 {
        return Int64(pow(Double(lhs), Double(rhs)))
    }
}

extension Double {
    static func **(lhs: Double, rhs: Double) -> Double {
        return pow(lhs, rhs)
    }
}

precedencegroup PowerPrecedence {
    higherThan: MultiplicationPrecedence
}

infix operator **: PowerPrecedence

