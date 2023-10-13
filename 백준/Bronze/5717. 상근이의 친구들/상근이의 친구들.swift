import Foundation

func solution(_ a: Int, _ b: Int) {
    print(a + b)
}

while true {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    if arr[0] == arr[1] && arr[1] == 0 {
        break
    } else {
        solution(arr[0], arr[1])
    }
}