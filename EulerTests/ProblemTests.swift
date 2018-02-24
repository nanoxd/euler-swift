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

            context("5") {
                it("should return 2520 as the smallest number that can be divided by 1...10 without a remainder") {
                    let smallestMultiple = self.euler.smallestMultiple(min: 1, max: 10)
                    expect(smallestMultiple) == 2520
                }

                it("should calculate the smallest multiple that can be divided by 1...20 without a remainder") {
                    let smallestMultiple = self.euler.smallestMultiple(min: 1, max: 20)
                    expect(smallestMultiple) == 232792560
                }
            }

            context("6") {
                it("should return the sum of the first ten numbers squared") {
                    let sum = self.euler.sumOfSquares(range: 1...10)
                    expect(sum) == 385
                }

                it("should return the square of the sum of first ten numbers") {
                    let sum = self.euler.squareOfSum(range: 1...10)
                    expect(sum) == 3025
                }

                it("should return the difference between the sum of the first 10 squared and square of the sum") {
                    let sum = self.euler.sumOfSquares(range: 1...10)
                    let squareSum = self.euler.squareOfSum(range: 1...10)

                    expect(squareSum - sum) == 2640
                }

                it("should return the difference between the sum of the first 100 squared and square of the sum") {
                    let sum = self.euler.sumOfSquares(range: 1...100)
                    let squareSum = self.euler.squareOfSum(range: 1...100)

                    expect(squareSum - sum) == 25164150
                }
            }

            context("7") {
                it("should return the 6th prime as 13") {
                    let primes = PrimeSequence().prefix(6)
                    expect(primes).to(contain(2, 3, 5, 7, 11, 13))
                    let sixth = Array(primes).last
                    expect(sixth) == 13
                }

                it("should return the 10,001st prime") {
                    let primes = PrimeSequence().prefix(10_001)
                    let prime = Array(primes).last
                    expect(prime) == 104743
                }
            }
        }
    }
}
