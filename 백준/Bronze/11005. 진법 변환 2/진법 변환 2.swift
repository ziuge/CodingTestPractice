
let arr = readLine()!.split(separator: " ").map({ Int64($0)! })
let n = arr[0]
let b = arr[1]

var change: [Int64] = []
var answer : [String] = []

var temp = n

while temp > 0 {
    change.append(temp % b)
    temp = temp / b
}

change.forEach { num in
    if num >= 10 {
        answer.append(String(UnicodeScalar(UInt8(num) + 55)))
    } else {
        answer.append(String(num))
    }
}
answer.reverse()
print(answer.joined())
