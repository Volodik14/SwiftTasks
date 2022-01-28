import UIKit

var greeting = "Hello, playground"

// Парсит строку параметра из url.
func parseParameter(parameter: String) -> (String, Int?) {
    let index = parameter.firstIndex(of: "=")
    let key = String(parameter[parameter.startIndex..<index!])
    let valIndex = parameter.index(index!, offsetBy: 1)
    if valIndex == parameter.endIndex {
        return (key, nil)
    } else {
        let value = String(parameter[valIndex..<parameter.endIndex])
        return (key, Int(value))
    }
    
}

func getParametersOfUrl(url: String) -> [String: Int?] {
    var tempUrl = url
    var indexes = [String.Index]()
    var parameters = [String]()
    indexes.append(tempUrl.firstIndex(of: "?")!)
    
    
    // Ищем параметры, пока они есть.
    while let index = tempUrl.firstIndex(of: "&") {
        tempUrl.remove(at: index)
        tempUrl.insert("*", at: index)
        indexes.append(index)
    }
    // Заполняем массив параметров.
    for i in 0..<indexes.count-1 {
        let startIndex = url.index(indexes[i], offsetBy: 1)
        parameters.append(String(url[startIndex..<indexes[i+1]]))
    }
    let parsedParameters = parameters.map {par in
        parseParameter(parameter: par)
    }
    let result = Dictionary(parsedParameters,
                            uniquingKeysWith: { (first, _) in first })
    return result
}

let parameters = getParametersOfUrl(url: "https://target.com/index.html?pass=12345&port=8080&cookie=&host=localhost")
for par in parameters {
    let key = String(par.key)
    if par.value != nil {
        print("\(key) : \(par.value!)")
    } else {
        print("\(key) : not found")
    }
}
if parameters.keys.contains("pass") {
    print("password : \(String(parameters["pass"]!!))")
}
