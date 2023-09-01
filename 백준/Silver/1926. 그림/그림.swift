import Foundation

let arr = readLine()!.split(separator: " ").map({Int($0)!})
let n = arr[0]
let m = arr[1]

var field: [[Int]] = []

for _ in 0..<n {
    field.append(readLine()!.split(separator: " ").map( {Int($0)!} ))
}

var visited = Array(repeating: Array(repeating: false, count: m), count: n)

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var paintingCount = 0
var paintingArea = 0
var tempArea = 0

func dfs(_ x: Int, _ y: Int, area: Int) {
    visited[x][y] = true
    tempArea = area
    
    for i in 0..<4 {
        let tempX = x + dx[i]
        let tempY = y + dy[i]
        
        if tempX >= 0 && tempX < n && tempY >= 0 && tempY < m && field[tempX][tempY] == 1 && visited[tempX][tempY] == false {
            dfs(tempX, tempY, area: tempArea + 1)
        }
    }
}

var point = 0

for i in 0..<n {
    for j in 0..<m {
        if field[i][j] == 1 && visited[i][j] == false {
            paintingCount += 1
            dfs(i, j, area: 1)
            paintingArea = max(paintingArea, tempArea)
        }
    }
}

print(paintingCount)
print(paintingArea)

