import Foundation

let n = Int(readLine()!)!

var f: [Int:Int] = [0:0, 1:1, 2:1]

func fibb(_ x: Int) -> Int {
    if let temp = f[x] {
        return temp
    } else {
        f[x] = fibb(x - 1) + fibb(x - 2)
        return f[x]!
    }
}

print(fibb(n))
