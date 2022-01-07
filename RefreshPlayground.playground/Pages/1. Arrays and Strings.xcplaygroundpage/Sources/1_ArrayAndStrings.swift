import Foundation

protocol ArrayAndStringsProtocol {
    func isUnique(string: [Character], optimal: Bool) -> Bool
}

class ArrayAndStrings {
    private let isUnique: IsUnique = IsUniqueImpl()
}

extension ArrayAndStrings: ArrayAndStringsProtocol {
    
    func isUnique(string: [Character], optimal: Bool) -> Bool {
        if (optimal) {
            return isUnique.optimal(string: string)
        }
        return isUnique.naive(string: string)
    }
    
}
