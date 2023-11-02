import Foundation

let arr = readLine()!.split(separator: " ").map({ String($0) })

let a = arr[0] + arr[1]
let b = arr[2] + arr[3]

print(Int(a)! + Int(b)!)
