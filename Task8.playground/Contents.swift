import UIKit

func charToMakeWordSoundGood(word: String) -> Int {
    let vowels : Set<Character> = ["e", "y", "u", "i", "o", "a"]
    var isVowel = false
    var result = 0
    var count = 0
    for char in word {
        // Если буква гласная.
        if vowels.contains(char) {
            // Если была согласная.
            if !isVowel {
                // Проверяем, сколько шли подряд согласных.
                result += ((count - 1) / 2)
                count = 0
                isVowel = true
            }
            count += 1
        // Если буква согласная.
        } else {
            // Если была гласная.
            if isVowel {
                // Проверяем, сколько шли подряд гласных.
                result += ((count - 1) / 2)
                count = 0
                isVowel = false
            }
            count += 1
        }
    }
    return result
}

let input = "biiiiig"
print(charToMakeWordSoundGood(word: input))
