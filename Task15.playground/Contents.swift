import UIKit

// Функция для reduce.
func countDigitsInString(_ count : Int, _ char : Character) -> Int {
    return count + char.wholeNumberValue!
}

///Функция из задачи 13, но пришлось поменять входной параметр на String,
///так как номер может начинаться с нуля.
func isTicketLucky(strNum: String) -> Bool {
    let firstHalf = strNum.prefix(3)
    let secondHalf = strNum.suffix(3)
    // Считаем сумму цифр в числах.
    let sum1 = firstHalf.reduce(0, countDigitsInString)
    let sum2 = secondHalf.reduce(0, countDigitsInString)
    return sum1 == sum2
}

let input = "090234"
print(isTicketLucky(strNum: input) ? "Lucky" : "Regular")
