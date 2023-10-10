import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let a = arr[0]
let i = arr[1]

if a > 1 {
    print(a*(i-1) + 1)
} else {
    print(i)
}
