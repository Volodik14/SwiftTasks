import UIKit

func countSubstrings(str: String, substr: String) -> Int {
    // Количество разделённых этим словом подстрок - 1.
    return str.components(separatedBy:substr).count - 1
}

let input1 = "hello yellow jello"
let input2 = "ll"
print(countSubstrings(str: input1, substr: input2))
