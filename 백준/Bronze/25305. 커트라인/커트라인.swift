import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
let k = arr[1]

let scores = readLine()!.split(separator: " ").map({ Int($0)! })
print(scores.sorted().reversed()[k - 1])
