import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
let m = arr[1]

var dict: [String:String] = [:]

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map({ String($0) })
    dict[temp[0]] = temp[1]
}

for _ in 0..<m {
    print(dict[readLine()!]!)
}
