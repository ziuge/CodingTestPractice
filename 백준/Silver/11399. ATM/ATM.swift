let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })

arr.sort()

var answer = arr[0]
for i in 1..<n {
    arr[i] = arr[i-1] + arr[i]
    answer += arr[i]
}

print(answer)