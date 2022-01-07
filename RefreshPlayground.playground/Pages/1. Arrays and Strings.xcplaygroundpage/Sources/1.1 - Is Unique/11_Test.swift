import Foundation
import XCTest

public class IsUniqueTest: XCTestCase {
    
    private let algorithm: ArrayAndStringsProtocol = ArrayAndStrings()
    private let bigDataSetSize = 10000000
    private let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    private let characters: [Character] = ["A", "B", "D", "2", "D", "A", "B",]

    func testExceptionCases() {
        XCTAssertFalse(algorithm.isUnique(string: [], optimal: false))
        XCTAssertTrue(algorithm.isUnique(string: ["A"], optimal: false))
        XCTAssertFalse(algorithm.isUnique(string: [], optimal: true))
        XCTAssertTrue(algorithm.isUnique(string: ["A"], optimal: true))
    }
    
    func testNaiveApproach() {
        XCTAssertFalse(algorithm.isUnique(string: characters, optimal: false))
    }
    
    func testOptimalApproach() {
        XCTAssertFalse(algorithm.isUnique(string: characters, optimal: true))
    }
    
    func testNaiveApproachWithHugeDataSet() {
        let bigDataSet = [Character]((0 ..< bigDataSetSize).map{ _ in self.letters.randomElement()! })
        measure {
            XCTAssertFalse(algorithm.isUnique(string: bigDataSet, optimal: false))
        }
    }
    
    func testOptimalApproachWithHugeDataSet() {
        let bigDataSet = [Character]((0 ..< bigDataSetSize).map{ _ in self.letters.randomElement()! })
        measure {
            XCTAssertFalse(algorithm.isUnique(string: bigDataSet, optimal: true))
        }
    }
    
}
