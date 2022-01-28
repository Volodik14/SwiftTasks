import UIKit

func getArrayOfChars(startingValue: Character, endingValue: Character) -> [Character] {
    let startingValueInt = Int(startingValue.unicodeScalars.first!.value)
    let endingValueInt = Int(endingValue.unicodeScalars.first!.value)
    let arrayResult: [Character] = (startingValueInt...endingValueInt).map {
        i in Character(UnicodeScalar(i)!)
    }
    return arrayResult
}

func getGoodPassword(a: Int, b: Int, c: Int, n: Int) -> String {
    // Для подсчёта оставшихся неиспользованных символов.
    var upperCount = a
    var numbersCount = c

    let lowercasedArray: [Character] = getArrayOfChars(startingValue: "a", endingValue: "z")
    
    let uppercasedArray: [Character] = getArrayOfChars(startingValue: "A", endingValue: "Z")
    
    let numbersArray: [Character] = getArrayOfChars(startingValue: "0", endingValue: "9")
    // Сначала добавляем заглавные, потом цифры, затем всё заполняем строчными.
    let resultArray = (0..<n).map { i -> String in
        if upperCount > 0 {
            upperCount -= 1
            return String(uppercasedArray[i % 26])
        } else if numbersCount > 0 {
            numbersCount -= 1
            return String(numbersArray[i % 10])
        } else {
            return String(lowercasedArray[i % 26])
        }
    }
    
    return resultArray.joined()
}

let inputString = "3 4 1 8"
let inputArray = inputString.components(separatedBy: " ").map {
    str in Int(str)
}
let password = getGoodPassword(a: inputArray[0]!, b: inputArray[1]!, c: inputArray[2]!, n: inputArray[3]!)
print(password)

