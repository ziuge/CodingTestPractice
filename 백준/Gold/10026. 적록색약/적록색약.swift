import Foundation

let n = Int(readLine()!)!

var graph: [[String]] = []

for _ in 0..<n {
    let temp = Array(readLine()!.map({String($0)}))
    graph.append(temp)
}

var graphColorWeak: [[String]] = graph

for i in 0..<n {
    for j in 0..<n {
        if graphColorWeak[i][j] == "R" {
            graphColorWeak[i][j] = "G"
        }
    }
}

var visited = Array(repeating: Array(repeating: false, count: n+1), count: n+1)

var dx = [-1, 1, 0, 0]
var dy = [0, 0, -1, 1]

var count = [0, 0]

func dfs(_ x: Int, _ y: Int, graph: [[String]]) {
    visited[x][y] = true
    
    for i in 0..<4 {
        let tempX = x + dx[i]
        let tempY = y + dy[i]
        if tempX >= 0 && tempX < n && tempY >= 0 && tempY < n && !visited[tempX][tempY] && graph[tempX][tempY] == graph[x][y] {
            dfs(tempX, tempY, graph: graph)
        }
    }
}

func solution(graph: [[String]], num: Int) {
    visited = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                dfs(i, j, graph: graph)
                count[num] += 1
            }
        }
    }
    
}

solution(graph: graph, num: 0)
solution(graph: graphColorWeak, num: 1)

print(count.map({String($0)}).joined(separator: " "))
