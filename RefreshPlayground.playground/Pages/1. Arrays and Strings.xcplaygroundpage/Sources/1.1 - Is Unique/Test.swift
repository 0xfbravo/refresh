import Foundation
import XCTest

public class IsUniqueTest: XCTestCase {
    
    private let bigDataSetSize = 1000000
    private let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    private let characters: [Character] = ["A", "B", "D", "2", "D", "A", "B",]

    func testNaiveApproach() {
        XCTAssertFalse(Naive.isUnique(string: characters))
    }
    
    func testOptimalApproach() {
        XCTAssertFalse(Optimal.isUnique(string: characters))
    }
    
    func testNaiveApproachWithBigDataSet() {
        let bigDataSet = [Character]((0 ..< bigDataSetSize).map{ _ in self.letters.randomElement()! })
        XCTAssertFalse(Naive.isUnique(string: bigDataSet))
    }
    
}
