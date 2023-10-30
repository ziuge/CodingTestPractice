import Foundation

let n = Int(readLine()!)!
var maxPrize = 0

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    var prize = 0
    let a = arr[0]
    let b = arr[1]
    let c = arr[2]
    
    if a == b && b == c {
        prize = 10000 + a * 1000
    } else if a != b && b != c && c != a {
        prize = 100 * max(a, max(b, c))
    } else {
        var temp = 0
        if a == b {
            temp = b
        } else {
            temp = c
        }
        prize = 1000 + 100 * temp
    }
    
    maxPrize = max(maxPrize, prize)
    
}

print(maxPrize)