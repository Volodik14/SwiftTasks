import UIKit

func getPreviousChars(char: Character) -> [Character]? {
    // Вычисляем "номера" буквы "a" и входной буквы
    let startingValue = Int(("a" as UnicodeScalar).value)
    let endingValue = Int(char.unicodeScalars.first!.value)
    // Выводим ошибку, если выходим за границы.
    if (endingValue < startingValue) || (endingValue > startingValue + 25) {
        return nil
    }
    // Заполняем вывод с предыдущими символами.
    let result: [Character] = (startingValue..<endingValue).map {
        i in Character(UnicodeScalar(i)!)
    }
    return result
}

if let previousChars = getPreviousChars(char: "e") {
    print("Previous chars:")
    print(previousChars)
} else {
    print("Wrong character, please input correct lowercased character")
}




