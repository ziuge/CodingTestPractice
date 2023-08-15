import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
let m = arr[1]

var baskets = Array(repeating: 0, count: n+1)

for _ in 0..<m {
    let tempArr = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = tempArr[0]
    let j = tempArr[1]
    let k = tempArr[2]
    
    for temp in i...j {
        baskets[temp] = k
    }
}

print(Array(baskets[1...].map({ String($0) })).joined(separator: " "))
