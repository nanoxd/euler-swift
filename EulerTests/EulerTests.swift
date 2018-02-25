//
//  EulerTests.swift
//  EulerTests
//
//  Created by Fernando Paredes on 2/20/18.
//  Copyright © 2018 Pixel Galaxyz LLC. All rights reserved.
//

import XCTest
@testable import Euler

class EulerTests: XCTestCase {
    let euler = Euler()
    func testPerformanceOfSum() {
        let array = Array.init(repeating: 2, count: 20)

        measure {
            let sum = array.sum()
            XCTAssertEqual(sum, 40)
        }
    }

    func testPrimeFactors() {
        let noFactors = euler.primeFactors(for: 1)
        XCTAssertEqual(noFactors, [])

        let factors = euler.primeFactors(for: 2)
        XCTAssertEqual(factors, [2])

        measure {
            let primes = euler.primeFactors(for: 13_195)
            XCTAssertEqual(primes.count, 4)
        }
    }

    func testIsPrime() {
        XCTAssertFalse(1.isPrime)
        XCTAssertFalse(4.isPrime)

        XCTAssertTrue(2.isPrime)
        XCTAssertTrue(3.isPrime)
        XCTAssertTrue(5.isPrime)
        XCTAssertTrue(7.isPrime)

        XCTAssertFalse(33.isPrime)

        measure {
            XCTAssertTrue(101.isPrime)
            // Test the cache
            XCTAssertTrue(101.isPrime)
        }
    }

    func testGreatestCommonDivisor() {
        let fiftyFour = 54

        measure {
            XCTAssertEqual(fiftyFour.gcd(24), 6)
        }
    }
}
