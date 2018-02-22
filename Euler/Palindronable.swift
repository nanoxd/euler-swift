import Foundation

protocol Palindronable {
    var isPalindrone: Bool { get }
}

extension Palindronable where Self: CustomStringConvertible {
    var isPalindrone: Bool {
        return description == String(description.reversed())
    }
}

extension Int: Palindronable { }
extension UInt: Palindronable { }
extension Int64: Palindronable { }
extension UInt64: Palindronable { }
extension Double: Palindronable { }
