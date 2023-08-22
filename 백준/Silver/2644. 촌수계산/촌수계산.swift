import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let start = arr[0]
let finish = arr[1]
var family: [Int:[Int]] = [:]

// 가족 그래프 만들기
let m = Int(readLine()!)!
for _ in 0..<m {
    let temp = readLine()!.split(separator: " ").map({ Int($0)! })
    let x = temp[0]
    let y = temp[1]
    family[x, default: []].append(y)
    family[y, default: []].append(x)
}

// 방문 배열 만들기
var visited = Array(repeating: false, count: n+1)
var answer = 0
var isSuccess = false

func dfs(_ start: Int, count: Int) {
    visited[start] = true
    
    if start == finish {
        answer = count
        isSuccess = true
        return
    }
    
    for i in family[start]! {
        if !visited[i] {
            dfs(i, count: count + 1)
        }
    }
}

dfs(start, count: 0)
print(isSuccess ? answer : -1)