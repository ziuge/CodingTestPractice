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

let temp = readLine()!.split(separator: " ").map({ Int($0)! })
let m = temp[0]
let n = temp[1]
let h = temp[2]

var tomato: [[[Int]]] = Array(repeating: [], count: h)
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: m), count: n), count: h)
var count = 0
var queue = Queue<[Int]>()
var answer = 0

for i in 0..<h {
    for _ in 0..<n {
        tomato[i].append(readLine()!.split(separator: " ").map({ Int($0)! }))
    }
}

let dx = [-1, 1, 0, 0, 0, 0]
let dy = [0, 0, -1, 1, 0, 0]
let dz = [0, 0, 0, 0, -1, 1]

func bfs(_ z: Int, _ y: Int, _ x: Int) {
    visited[z][y][x] = true
    
    for i in 0..<6 {
        let tempX = x + dx[i]
        let tempY = y + dy[i]
        let tempZ = z + dz[i]
        
        if tempX >= 0 && tempY >= 0 && tempZ >= 0 && tempX < m && tempY < n && tempZ < h {
            if !visited[tempZ][tempY][tempX] && tomato[tempZ][tempY][tempX] == 0 {
                tomato[tempZ][tempY][tempX] = tomato[z][y][x] + 1
                answer = max(answer, tomato[z][y][x])
                queue.enqueue([tempZ, tempY, tempX])
            }
        }
        
    }
    
}

func solution() -> Int {
    if !Array(tomato.joined().joined()).contains(0) {
        return answer
    }

    for i in 0..<h {
        for j in 0..<n {
            for k in 0..<m {
                if tomato[i][j][k] > 0 {
                    queue.enqueue([i, j, k])
                }
            }
        }
    }

    while queue.frontValue != queue.size {
        let current = queue.dequeue()!
        let i = current[0]
        let j = current[1]
        let k = current[2]
        if !visited[i][j][k] && tomato[i][j][k] > 0 {
            bfs(i, j, k)
        }
    }

    if Array(tomato.joined().joined()).contains(0) {
        answer = -1
    }

    return answer
}

print(solution())
