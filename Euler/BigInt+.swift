import Foundation
import BigInt

extension BigInt {
    var factorial: BigInt {
        return (1...self)
            .reduce(1, *)
    }
}

extension Int {
    var bigInt: BigInt {
        return BigInt(self)
    }
}
