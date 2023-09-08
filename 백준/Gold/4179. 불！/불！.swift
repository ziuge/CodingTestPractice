import Foundation

struct Queue<T> {
    private var queue: [T?] = []
    private var front: Int = 0
    
    public var frontValue: Int {
        return self.front
    }
    
    public var size: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard front <= size, let element = queue[front] else { return nil }
        queue[front] = nil
        front += 1
        return element
    }
}

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let r = arr[0]
let c = arr[1]
let dr = [-1, 1, 0, 0]
let dc = [0, 0, -1, 1]

var queue = Queue<[Int]>()
var field: [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: c), count: r)
var jihoonVisited = Array(repeating: Array(repeating: false, count: c), count: r)
var answer: [Int] = [] // 탈출 성공 시간 저장

for _ in 0..<r {
    let temp = Array(readLine()!).map({ String($0) })
    field.append(temp)
}

var jihoon = field

func bfs(_ x: Int, _ y: Int) {
    visited[x][y] = true
    
//    field.forEach { line in
//        print(line)
//    }

    for i in 0..<4 {
        let tempX = x + dr[i]
        let tempY = y + dc[i]
        if tempX >= 0 && tempY >= 0 && tempX < r && tempY < c && field[tempX][tempY] == "." && visited[tempX][tempY] == false {
            field[tempX][tempY] = String(Int(field[x][y])! + 1)
            queue.enqueue([tempX, tempY])
        }
    }
}

func bfsEscape(_ x: Int, _ y: Int) {
    jihoonVisited[x][y] = true
    
//    jihoon.forEach { line in
//        print(line)
//    }

    for i in 0..<4 {
        let tempX = x + dr[i]
        let tempY = y + dc[i]
        // 불보다 빠르게 범위를 넘어가면 탈출에 성공한 것이므로 answer에 추가
        if tempX < 0 || tempY < 0 || tempX >= r || tempY >= c {
            if field[x][y] == "." {
                answer.append(Int(jihoon[x][y])! + 1)
            }
            if Int(jihoon[x][y]) != nil && Int(field[x][y]) != nil {
                if Int(jihoon[x][y])! < Int(field[x][y])! {
                    answer.append(Int(jihoon[x][y])! + 1)
                }
            }
        }
        if tempX >= 0 && tempY >= 0 && tempX < r && tempY < c && jihoon[tempX][tempY] == "." && jihoonVisited[tempX][tempY] == false {
            jihoon[tempX][tempY] = String(Int(jihoon[x][y])! + 1)
            queue.enqueue([tempX, tempY])
        }
    }

}

func solution() {
    
    // BFS for Fire
    for i in 0..<r {
        for j in 0..<c {
            if field[i][j] == "F" {
                queue.enqueue([i, j])
                field[i][j] = "0"
            }
        }
    }
    
    while queue.frontValue != queue.size {
        let current = queue.dequeue()!
        if field[current[0]][current[1]] != "#" && visited[current[0]][current[1]] == false {
            bfs(current[0], current[1])
        }
    }
    
    // BFS for Jihoon
    for i in 0..<r {
        for j in 0..<c {
            if field[i][j] == "J" {
                queue.enqueue([i, j])
                jihoon[i][j] = "0"
                if i == 0 || i == r - 1 || j == 0 || j == c - 1 {
                    answer.append(1)
                }
            }
        }
    }
    
    while queue.frontValue != queue.size {
        let current = queue.dequeue()!
        if jihoon[current[0]][current[1]] != "#" && jihoonVisited[current[0]][current[1]] == false {
            bfsEscape(current[0], current[1])
        }
    }

    if answer.count == 0 {
        print("IMPOSSIBLE")
    } else {
        print(answer.min()!)
    }
}

solution()
