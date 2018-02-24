import Foundation

/// A sequence of fibonacci numbers
struct FibonacciSequence<T: Numeric>: Sequence, IteratorProtocol {
    typealias Element = T
    private var current: T = 0
    private var nextValue: T = 1

    mutating func next() -> Element? {
        let value = current
        current = nextValue
        nextValue = nextValue + value

        return value
    }
}
