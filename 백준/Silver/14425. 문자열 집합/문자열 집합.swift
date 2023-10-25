import Foundation

let nums = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nums[0]
let m = nums[1]
var s = [String:Bool]()
var answer = 0

for _ in 0..<n {
    s[readLine()!] = true
}

for _ in 0..<m {
    let temp = readLine()!
    if s[temp] == true {
        answer += 1
    }
}

print(answer)
