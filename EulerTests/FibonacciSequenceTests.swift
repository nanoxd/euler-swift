import Foundation
import Quick
import Nimble
@testable import Euler

final class FibonacciSequenceTests: QuickSpec {
    override func spec() {
        describe("FibonacciSequenceTests") {
            it("calculates the first three terms") {
                var newSequence = FibonacciSequence<Int>()
                expect(newSequence.next()) == 0
                expect(newSequence.next()) == 1
                expect(newSequence.next()) == 1
            }
        }
    }
}
