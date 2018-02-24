//
//  PrimeSequence.swift
//  Euler
//
//  Created by Fernando Paredes on 2/24/18.
//  Copyright © 2018 Pixel Galaxyz LLC. All rights reserved.
//

import Foundation

struct PrimeSequence: Sequence, IteratorProtocol {
    typealias Element = Int
    private var current = 1
    private var nextPrime = 1

    mutating func next() -> Element? {
        nextPrime = current + 1
        while !nextPrime.isPrime {
            nextPrime += 1
        }

        current = nextPrime
        return nextPrime
    }
}

