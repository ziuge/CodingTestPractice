import Foundation

let n = Int(readLine()!)!
var field: [[Int]] = []
for _ in 0..<n {
    field.append(readLine()!.split(separator: " ").map({ Int($0)! }))
}

var fieldMax = field.joined().max()!

let dx = [-1, 1, 0, 0]
let dy = [0, 0, 1, -1]

var visited = Array(repeating: Array(repeating: 0, count: n), count: n)

func dfs(_ x: Int, _ y: Int, count: Int, water: Int) {
    
    for i in 0..<4 {
        let tempX = x + dx[i]
        let tempY = y + dy[i]
        
        if tempX >= 0 && tempX < n && tempY >= 0 && tempY < n && visited[tempX][tempY] == 0 && field[tempX][tempY] > water {
            visited[tempX][tempY] = count
            dfs(tempX, tempY, count: count, water: water)
        }
    }
}

var count = 0
var max_count = 1

for i in 0...fieldMax {
    max_count = max(max_count, count)
    count = 0
    visited = Array(repeating: Array(repeating: 0, count: n), count: n)
    for j in 0..<n {
        for k in 0..<n {
            if field[j][k] > i && visited[j][k] == 0 {
                count += 1
                dfs(j, k, count: count, water: i)
            }
        }
    }
}

print(max_count)
