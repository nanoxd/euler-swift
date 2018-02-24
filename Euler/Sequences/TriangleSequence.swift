import Foundation

struct TriangleSequence: Sequence, IteratorProtocol {
    typealias Element = Int
    private var current = 0
    private var count = 0

    mutating func next() -> Int? {
        count += 1
        current = current + count
        return current
    }
}

