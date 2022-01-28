import UIKit

func getOnceWrittenChars(string: String) -> Set<Character> {
    // Символы, которые вообще встретились.
    var usedChars = Set<Character>()
    // Символы, которые встретились минимум 2 раза
    var twiceUsedChars = Set<Character>()
    for char in string {
        if usedChars.contains(char) {
            twiceUsedChars.insert(char)
        } else {
            usedChars.insert(char)
        }
    }
    // Вычитая из появившихся символов (в принципе) появившиеся дважды, получаем уникальные.
    return usedChars.subtracting(twiceUsedChars)
}

let uniqChars = getOnceWrittenChars(string: "i like Swift")
print("Unique characters:")
print(uniqChars)




