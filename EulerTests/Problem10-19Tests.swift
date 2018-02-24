import Foundation
import XCTest
@testable import Euler

class ProblemTenThroughNineteentests: XCTestCase {
    func testProblem10() {
        let sumOfPrimesBelow10 = PrimeSequence()
            .prefix { $0 < 10 }
            .sum()

        XCTAssertEqual(sumOfPrimesBelow10, 17)
    }
}
