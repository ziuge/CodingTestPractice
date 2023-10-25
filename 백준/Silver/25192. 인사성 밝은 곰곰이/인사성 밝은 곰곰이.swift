import Foundation

let n = Int(readLine()!)!
var answer = 0
var visited: [String:Bool] = [:]

for _ in 0..<n {
    let temp = readLine()!
    if temp == "ENTER" {
        visited = [:]
    } else {
        if visited[temp] == nil {
            answer += 1
            visited[temp] = true
        }
    }
}

print(answer)