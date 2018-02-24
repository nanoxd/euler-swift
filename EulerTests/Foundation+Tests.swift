import Foundation
import Quick
import Nimble
@testable import Euler

final class FoundationTests: QuickSpec {
    override func spec() {
        describe("Foundation+") {
            context("Palindrone") {
                it("should return true for Palindromic numbers") {
                    expect(1.isPalindrone) == true
                    expect(11.isPalindrone) == true
                    expect(101.isPalindrone) == true
                    expect(UInt(1111).isPalindrone) == true
                    expect(Int64(1111).isPalindrone) == true
                    expect(11.11.isPalindrone) == true
                }

                it("should return false for non Palindromic numbers") {
                    expect(12.isPalindrone) == false
                    expect(133.isPalindrone) == false
                    expect(1021.isPalindrone) == false
                    expect(UInt(112).isPalindrone) == false
                    expect(Int64(2121454).isPalindrone) == false
                    expect(11.12.isPalindrone) == false
                }
            }

            context("Int") {
                context("isMultiple(of:)") {
                    it("should return true when it is a multiple") {
                        let num = 15

                        expect(num.isMultiple(of: 5)) == true
                        expect(num.isMultiple(of: 3)) == true
                    }

                    it("should return false when it is not a multiple") {
                        let num = 15
                        expect(num.isMultiple(of: 2)) == false
                        expect(num.isMultiple(of: 6)) == false
                    }

                    it("should return false when value is 0") {
                        let num = 0
                        expect(num.isMultiple(of: 1)) == false
                        expect(num.isMultiple(of: 1)) == false
                    }
                }
            }
        }
    }
}

