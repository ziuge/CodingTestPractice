import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })

let n = arr[0]
let k = arr[1]
var divisor: [Int] = [1]

// 약수 구하기
for i in 2...n/2 {
    if n % i == 0 {
        divisor.append(i)
    }
}
divisor.append(n)

print(divisor.count >= k ? divisor[k-1] : 0)
