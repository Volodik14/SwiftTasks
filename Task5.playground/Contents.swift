import UIKit

func getEmptyRowsCols(array: [(Int,Int)]) -> (Set<Int>, Set<Int>)? {
    // Проверка, что кораблей 3
    if array.count != 3 {
        return nil
    }
    var rows = Set<Int>(1...5)
    var cols = Set<Int>(1...5)
    for ship in array {
        rows.remove(ship.0)
        cols.remove(ship.1)
    }
    return (rows, cols)
}

// Перевод строки в координаты.
func stringToIntInt(string: String) -> (Int, Int) {
    let arr: [String] = string.components(separatedBy: " ")
    guard let x = Int(arr[0]), let y = Int(arr[1]) else {
        print("Got not a number in string.")
        return (0, 0)
    }
    return (x, y)
}

// Ввод.
let string1 = "1 2"
let string2 = "2 3"
let string3 = "4 1"

let arrayString = [string1, string2, string3]
let inputArray = arrayString.map {string in stringToIntInt(string: string) }

// Вывод с проверкой.
if let emptyRowsCols = getEmptyRowsCols(array: inputArray) {
    let stringRows = Array(emptyRowsCols.0).map {val in String(val)}
    print(stringRows.joined(separator: " "))
    let stringCols = Array(emptyRowsCols.1).map {val in String(val)}
    print(stringCols.joined(separator: " "))
} else {
    print("Wrong input strings")
}





