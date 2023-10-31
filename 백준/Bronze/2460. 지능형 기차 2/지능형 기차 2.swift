import Foundation

var people = 0
var maxPeople = 0

for _ in 0..<10 {
    let temp = readLine()!.split(separator: " ").map({ Int($0)! })
    people -= temp[0]
    people += temp[1]
    maxPeople = max(maxPeople, people)
}

print(maxPeople)
