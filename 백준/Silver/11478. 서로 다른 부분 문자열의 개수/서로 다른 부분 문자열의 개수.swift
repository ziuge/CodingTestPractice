import Foundation

let arr = Array(readLine()!)
var answer: Set<String> = []

for i in 0..<arr.count {
    var string = ""
    for j in i..<arr.count {
        string += String(arr[j])
        answer.insert(string)
    }
}

print(answer.count)
