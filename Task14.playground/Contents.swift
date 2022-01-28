import UIKit

func isPalindrom(str: String) -> Bool {
    return str.reversed().elementsEqual(str)
}

let input = "kayak"
print(isPalindrom(str: input) ? "yes" : "no")
