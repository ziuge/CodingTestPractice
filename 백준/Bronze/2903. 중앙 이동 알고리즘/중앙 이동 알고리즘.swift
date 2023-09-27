import Foundation

let n = Int(readLine()!)!
let arr = [2, 3, 5]

func dots(_ n: Int) -> Int {
    if n < 3 {
        return arr[n] * arr[n]
    } else {
        return Int((sqrt(Double(dots(n-1)))*2 - 1)) * Int((sqrt(Double(dots(n-1)))*2 - 1))
    }
}

print(dots(n))