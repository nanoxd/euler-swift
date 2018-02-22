import Foundation

extension Sequence where Element: Numeric {
    /// Produces the sum of all items in sequence
    func sum() -> Element {
        return reduce(0, +)
    }
}

