import Foundation

// O(n^2)
extension Naive {
    
    public static func isUnique(string: [Character]) -> Bool {
        
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
    
}
