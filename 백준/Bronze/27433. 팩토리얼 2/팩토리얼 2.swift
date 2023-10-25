import Foundation

let n = Int(readLine()!)!

func factorial(_ x: Int) -> Int {
    if x <= 1 {
        return 1
    } else {
        return factorial(x - 1) * x
    }
}

print(factorial(n))