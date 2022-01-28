import UIKit

func moveFirstChars(count: Int, string: String) -> String {
    if count >= string.count {
        return string
    }
    let substr1 = string.prefix(count)
    let substr2 = string.suffix(string.count - count)
    let newString = substr2 + substr1
    return String(newString)
}

let input = "Hello 3"
let inputArr = input.split(separator: " ")
print(moveFirstChars(count: Int(inputArr[1])!, string: String(inputArr[0])))

