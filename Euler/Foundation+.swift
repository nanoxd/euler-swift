import Foundation

extension Sequence where Element: Numeric {
    /// Produces the sum of all items in sequence
    func sum() -> Element {
        return reduce(0, +)
    }
}

extension Int {
    /// Returns true iff self is a multiple of n
    func isMultiple(of n: Int) -> Bool {
        guard self != 0 else { return false }
        return self % n == 0
    }
}
