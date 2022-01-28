import UIKit

// Функция для reduce.
func countDigitsInString(_ count : Int, _ char : Character) -> Int {
    return count + char.wholeNumberValue!
}

func isNumberLucky(num: Int) -> Bool {
    let strNum = String(num)
    let firstHalf = strNum.prefix(strNum.count / 2)
    let secondHalf = strNum.suffix(strNum.count / 2)
    // Считаем сумму цифр в числах.
    let sum1 = firstHalf.reduce(0, countDigitsInString)
    let sum2 = secondHalf.reduce(0, countDigitsInString)
    return sum1 == sum2
}

let input = 12344321
print(isNumberLucky(num: input) ? "YES" : "NO")

