import UIKit

func isStringAlphabetic(str: String) -> Bool {
    let startingValue = Int(("a" as UnicodeScalar).value)
    let alphabet = (0..<26).map { i in
        Character(UnicodeScalar(i + startingValue)!)
    }
    // Позиция 1-го элемента в алфавитном порядке.
    var pos = Int(alphabet.firstIndex(of: str.first!)!)
    
    for char in str.suffix(from: str.index(after: str.startIndex)) {
        pos += 1
        // Если следующий символ не следует по алфавиту.
        if char != alphabet[pos] {
            return false
        }
    }
    return true
}

var input = "abcd"
print(isStringAlphabetic(str: input))
