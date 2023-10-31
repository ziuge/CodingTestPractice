import Foundation

var arr = [Int]()
var temp = 1
while arr.count < 1000 {
    arr += Array(repeating: temp, count: temp)
    temp += 1
}

let section = readLine()!.split(separator: " ").map({ Int($0)! })
print(arr[section[0]-1..<section[1]].reduce(0, +))
