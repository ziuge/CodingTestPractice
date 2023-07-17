import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
var k = arr[1]

var coins: [Int] = []

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

var i = n - 1 
var answer = 0

while i >= 0 {
    let temp = coins[i]
    
    if k >= temp {
        answer += k / temp
        k = k % temp
    }
    
    i -= 1
}

print(answer)