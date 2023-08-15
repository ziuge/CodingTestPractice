import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
let m = arr[1]

var baskets = Array(0...n)

for _ in 0..<m {
    let temp = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = temp[0]
    let j = temp[1]
    
    baskets.swapAt(i, j)
}

print(Array(baskets[1...].map({String($0)})).joined(separator: " "))
