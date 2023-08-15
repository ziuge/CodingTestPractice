import Foundation

var arr: [[Int]] = []

for _ in 0..<9 {
    arr.append(readLine()!.split(separator: " ").map({ Int($0)! }))
}

let flatten = Array(arr.joined())
let max = flatten.max()!
print(max)
let index = flatten.firstIndex(of: max)!
print(index/9 + 1, index%9 + 1)
