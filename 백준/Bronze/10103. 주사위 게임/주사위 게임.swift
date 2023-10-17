import Foundation

var scoreA = 100
var scoreB = 100

let n = Int(readLine()!)!
for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    let numA = arr[0]
    let numB = arr[1]
    if numA > numB {
        scoreB -= numA
    } else if numA < numB {
        scoreA -= numB
    } else {
        continue
    }
}
print(scoreA)
print(scoreB)