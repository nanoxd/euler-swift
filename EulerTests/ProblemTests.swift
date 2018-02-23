//
//  ProblemTests.swift
//  EulerTests
//
//  Created by Fernando Paredes on 2/20/18.
//  Copyright © 2018 Pixel Galaxyz LLC. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Euler

final class ProblemTests: QuickSpec {
    let euler = Euler()
    override func spec() {
        describe("Problems") {
            context("1") {
                it("sums multiples of 3 and 5 below 10") {
                    let multiplesOfThreeAndFive = self.euler
                        .naturalNumbers(clamp: 10, multiplesOf: 3, 5)
                    print(multiplesOfThreeAndFive)
                    expect(multiplesOfThreeAndFive).to(contain(3, 5, 6, 9))
                    expect(multiplesOfThreeAndFive.sum()) == 23
                }

                it("sums multiples of 3 and 5 below 1000") {
                    let multiplesOfThreeAndFive = self.euler.naturalNumbers(clamp: 1000, multiplesOf: 3, 5)
                    expect(multiplesOfThreeAndFive).to(contain(3, 5, 6, 9))
                    expect(multiplesOfThreeAndFive.sum()) == 233_168
                }
            }

            context("2") {
                it("returns the first 10 terms") {
                    let fibs = FibonacciSequence<Int>()
                        .prefix(12)
                        .dropFirst(2)

                    expect(fibs).to(contain(1, 2, 3, 5, 8, 13, 21, 34, 55, 89))
                    expect(fibs.sum()) == 231
                }

                it("returns the sum of values that do not exceed four million") {
                    let fibs = FibonacciSequence<UInt64>()
                        .prefix(65) // Naively expect there to be less than 4 million
                        .dropFirst(2)
                        .filter { $0 < 4_000_000 }
                        .filter { $0 % 2 == 0 }

                    expect(fibs).to(contain(2, 8, 34))
                    expect(fibs.sum()) == 4_613_732
                }
            }

            context("3") {
                it("returns the prime factors for 13,195") {
                    let factors = self.euler.primeFactors(for: 13_195)
                    expect(factors.count) == 4
                    expect(factors).to(contain([5, 7, 13, 29]))
                }

                it("returns the largest prime factor for 600,851,475,143") {
                    let factors = self.euler.primeFactors(for: 600_851_475_143)

                    expect(factors.max()) == 6857
                }
            }

            context("4") {
                it("should return 9009 as the largest palindrone from two numbers") {
                    let palindrone = self.euler.palindrones(min: 10, max: 100)
                    expect(palindrone) == 9009
                }

                it("should calculate the largest palindrone from three numbers") {
                    let palindrone = self.euler.palindrones(min: 100, max: 1000)
                    expect(palindrone) == 906609
                }
            }
        }
    }
}
