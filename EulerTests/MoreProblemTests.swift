import Foundation
import XCTest
import BigInt
@testable import Euler

class MoreProblemTests: XCTestCase {
    func testProblem10() {
        let sumOfPrimesBelow10 = PrimeSequence()
            .prefix { $0 < 10 }
            .sum()

        XCTAssertEqual(sumOfPrimesBelow10, 17)

        let sumOfPrimesBelowTwoMillion = PrimeSequence()
            .prefix { $0 < 2_000_000 }
            .sum()

        XCTAssertEqual(sumOfPrimesBelowTwoMillion, 142_913_828_922)
    }

    func testProblem16() {
        func sumOfTwo(toThePowerOf n: Int) -> Int {
            let two: BigInt = 2
            return two.power(n).description
                .flatMap { Int(String($0)) }
                .sum()
        }


        let twoToTheFifteen = sumOfTwo(toThePowerOf: 15)
        XCTAssertEqual(twoToTheFifteen, 26)

        let twoToTheThousand = sumOfTwo(toThePowerOf: 1000)
        XCTAssertEqual(twoToTheThousand, 1366)
    }

    func testProblem20() {
        let factorialOfTen = 10.factorial
        let sumOfFactorialOfTen = factorialOfTen.description
            .flatMap { Int(String($0)) }
            .sum()

        XCTAssertEqual(sumOfFactorialOfTen, 27)

        let factorialOfOneHundred = 100.bigInt.factorial
        let sumOfFactorialOfOneHundred = factorialOfOneHundred.description
            .flatMap { Int(String($0)) }
            .sum()

        XCTAssertEqual(sumOfFactorialOfOneHundred, 648)
    }

    func testProblem25() {
        let fibsUpTo1000Digits = FibonacciSequence<BigInt>()
            .prefix { i in
                String(i).count <= 1000
            }
            .enumerated()
            .filter { (offset, i) -> Bool in
                return String(i).count == 1000
        }



        XCTAssertEqual(fibsUpTo1000Digits.first?.offset, 4782)
    }
}
