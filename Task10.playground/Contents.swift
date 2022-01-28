import UIKit

//  Не придумал красивее решения....
func removeMiddleChars(string: String) -> String {
    var newString = string
    if string.count.isMultiple(of: 2) {
        newString.remove(at: newString.index(newString.startIndex, offsetBy: string.count / 2 - 1))
        newString.remove(at: newString.index(newString.startIndex, offsetBy: string.count / 2 - 1))
    } else {
        newString.remove(at: newString.index(newString.startIndex, offsetBy: string.count / 2))
    }
    return newString
}

let input = "12333321"
print(removeMiddleChars(string: input))

