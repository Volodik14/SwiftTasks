import UIKit

func getFirstNumber(word: String) -> Int? {
    for char in word {
        if let number = char.wholeNumberValue {
            return number
        }
    }
    return nil
}

if let firstInt = getFirstNumber(word: "abc1de2fg4") {
    print("First number: \(firstInt)")
} else {
    print("There is no number in this word.....")
}



