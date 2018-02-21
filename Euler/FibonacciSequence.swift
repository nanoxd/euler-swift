import Foundation

/// A sequence of fibonacci numbers
struct FibonacciSequence: Sequence, IteratorProtocol {
    typealias Element = Int
    private var current = 0
    private var nextValue = 1

    mutating func next() -> Int? {
        let value = current
        current = nextValue
        nextValue = nextValue + value

        return value
    }
}
