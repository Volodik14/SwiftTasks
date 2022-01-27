import UIKit

func getUnusedChars(word: String) -> Set<Character> {
    var alphabet = Set<Character>()

    let startingValue = Int(("a" as UnicodeScalar).value) // 65
    for i in 0 ..< 26 {
        alphabet.insert(Character(UnicodeScalar(i + startingValue)!))
    }

    var usedChars = Set<Character>()
    let chars = [Character](word)

    for char in chars {
        usedChars.insert(char)
    }
    return alphabet.subtracting(usedChars)
}

let unusedChars = getUnusedChars(word: "abcdefg")
print("Unused characters: ")
print(unusedChars)


