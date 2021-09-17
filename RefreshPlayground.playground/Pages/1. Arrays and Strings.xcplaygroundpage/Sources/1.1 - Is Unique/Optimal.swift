import Foundation

// O(n)
extension Optimal {
    
    public static func isUnique(string: [Character]) -> Bool {
        
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
