import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = []
for _ in 0..<n {
    let arr = Array(readLine()!).map({ String($0) })
    graph.append(arr.compactMap({ Int($0) }))
}

var visited = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
var apt: [Int] = []
var count = 0

let dx = [-1, 0, 0, 1]
let dy = [0, 1, -1, 0]

func dfs(_ x: Int, _ y: Int) {
    visited[x][y] = true
    count += 1
    
    for i in 0..<4 {
        let tempX = x + dx[i]
        let tempY = y + dy[i]
        
        if tempX >= 0 && tempX < n && tempY >= 0 && tempY < n && !visited[tempX][tempY] && graph[tempX][tempY] == 1 {
            dfs(tempX, tempY)
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 && !visited[i][j] {
            count = 0
            dfs(i, j)
            apt.append(count)
        }
    }
}

print(apt.count)
apt.sort()
for i in 0..<apt.count {
    print(apt[i])
}
