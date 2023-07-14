import Foundation

let x = Int(readLine()!)!
let n = Int(readLine()!)!

var total = 0

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    total += arr[0] * arr[1]
}

print(total == x ? "Yes" : "No")
