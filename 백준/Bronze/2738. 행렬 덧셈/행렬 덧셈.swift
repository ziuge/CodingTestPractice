import Foundation

let nums = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nums[0]
let m = nums[1]

var p = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0...n * 2 - 1 {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    for j in 0..<m {
        p[i % n][j] += arr[j]
    }
}

for i in 0..<n {
    print(p[i].map({ String($0)} ).joined(separator: " "))
}