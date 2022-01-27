import UIKit

func getFirstNumber(word: String) -> Int? {
    // Проходимся по буквам по порядку и если это цифра, то возвращаем.
    for char in word {
        if let number = char.wholeNumberValue {
            return number
        }
    }
    
    // На случай если всё же нету цифр.
    return nil
}

if let firstInt = getFirstNumber(word: "abc1de2fg4") {
    print("First number: \(firstInt)")
} else {
    print("There is no number in this word.....")
}



