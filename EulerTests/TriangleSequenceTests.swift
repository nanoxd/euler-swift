//
//  TriangleSequenceTests.swift
//  EulerTests
//
//  Created by Fernando Paredes on 2/24/18.
//  Copyright © 2018 Pixel Galaxyz LLC. All rights reserved.
//

import XCTest
@testable import Euler

class TriangleSequenceTests: XCTestCase {
    func testFirstItems() {
        var sequence = TriangleSequence()
        XCTAssertEqual(sequence.next(), 1)
        XCTAssertEqual(sequence.next(), 3)
        XCTAssertEqual(sequence.next(), 6)
    }

    func testTenthItem() {
        let tenthItem = TriangleSequence().prefix(10)
            .max()

        XCTAssertEqual(tenthItem, 55)
    }
}
