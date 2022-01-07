import Foundation

protocol IsUnique {
    func naive(string: [Character]) -> Bool
    func optimal(string: [Character]) -> Bool
}

class IsUniqueImpl: IsUnique {
    
    // O(n^2)
    public func naive(string: [Character]) -> Bool {
        
        if (string.isEmpty) {
            return false
        }
        
        if (string.count < 2) {
            return true
        }
        
        for i in 0 ..< string.count {
            for j in 1 ..< string.count {
                if (i == j) {
                    return false
                }
            }
        }
        
        return true
        
    }
    
    // O(n)
    public func optimal(string: [Character]) -> Bool {
        
        if (string.isEmpty) {
            return false
        }
        
        if (string.count < 2) {
            return true
        }
        
        var hashTable = [Character : Int]()
        for i in 0 ..< string.count {
            if let _ = hashTable[string[i]] {
                return false
            }
            hashTable[string[i]] = 1
        }
        
        return true
        
    }
    
}
