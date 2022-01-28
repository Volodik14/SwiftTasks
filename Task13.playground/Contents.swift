import UIKit

func isNumberLucky(num: Int) -> Bool {
    let strNum = String(num)
    let firstHalf = strNum.prefix(strNum.count / 2)
    let secondHalf = strNum.suffix(strNum.count / 2)
    // Считаем сумму цифр в числах.
    let sum1 = firstHalf.reduce(0) { (count, char) in
        count + char.wholeNumberValue!
    }
    let sum2 = secondHalf.reduce(0) { (count, char) in
        count + char.wholeNumberValue!
    }
    return sum1 == sum2
}

let input = 12344321
print(isNumberLucky(num: input))

