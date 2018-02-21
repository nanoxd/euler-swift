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
                it("sum of multiples of 3 and 5 below 10") {
                    let multiplesOfThreeAndFive = self.euler
                        .naturalNumbers(clamp: 10, multiplesOf: 3, 5)
                    print(multiplesOfThreeAndFive)
                    expect(multiplesOfThreeAndFive).to(contain(3, 5, 6, 9))
                    expect(multiplesOfThreeAndFive.sum()) == 23
                }
            }
        }
    }
}
