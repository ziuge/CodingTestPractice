import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let x1 = arr[0]
let y1 = arr[1]
let r1 = arr[2]
let arr2 = readLine()!.split(separator: " ").map({ Int($0)! })
let x2 = arr2[0]
let y2 = arr2[1]
let r2 = arr2[2]

let distance = (x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1)
let length = (r1 + r2)*(r1 + r2)

print(length > distance ? "YES" : "NO")