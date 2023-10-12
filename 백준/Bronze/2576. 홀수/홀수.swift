import Foundation

var minNum = 100
var sum = 0

for _ in 0..<7 {
    let num = Int(readLine()!)!
    if num % 2 == 1 {
        minNum = min(minNum, num)
        sum += num
    }
}
if sum == 0 {
    print(-1)
} else {
    print(sum)
    print(minNum)
}
