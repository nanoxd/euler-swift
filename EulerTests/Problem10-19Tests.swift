import Foundation
import XCTest
@testable import Euler

class ProblemTenThroughNineteentests: XCTestCase {
    func testProblem10() {
        let sumOfPrimesBelow10 = PrimeSequence()
            .prefix { $0 < 10 }
            .sum()

        XCTAssertEqual(sumOfPrimesBelow10, 17)

        measure {
            let sumOfPrimesBelowTwoMillion = PrimeSequence()
                .prefix { $0 < 2_000_000 }
                .sum()

            XCTAssertEqual(sumOfPrimesBelowTwoMillion, 142_913_828_922)
        }
    }
}
