import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let k = arr[0]
let n = arr[1]
let m = arr[2]

if k * n > m {
    print(k * n - m)
} else {
    print(0)
}
