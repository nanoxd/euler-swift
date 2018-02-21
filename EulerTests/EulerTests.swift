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
    func testPerformanceOfSum() {
        let array = Array.init(repeating: 2, count: 20)

        measure {
            let sum = array.sum()
            XCTAssertEqual(sum, 40)
        }
    }
}
