import Foundation

let n = Int(readLine()!)!
var f = [Int:Int]()
func fib2(_ x: Int) -> Int {
    f[1] = 1
    f[2] = 1
    for i in 3...x {
        f[i] = f[i - 1]! + f[i - 2]!
    }
    return f[x]!
}

print(fib2(n), n - 2)