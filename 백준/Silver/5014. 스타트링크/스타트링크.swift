import Foundation

let temp = readLine()!.split(separator: " ").map({ Int($0)! })
let f = temp[0]
let s = temp[1]
let g = temp[2]
let u = temp[3]
let d = temp[4]

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

if s == g {
    print(0)
} else {
    var elevator = Array(repeating: 0, count: f + 1)
    var queue = Queue<Int>()

    queue.enqueue(s)

    while queue.size != queue.frontValue {
        let current = queue.dequeue()!
        
        if current - d > 0 && current - d != s && elevator[current - d] == 0 {
            elevator[current - d] = elevator[current] + 1
            queue.enqueue(current - d)
        }
        if current + u != s && current + u <= f && elevator[current + u] == 0 {
            elevator[current + u] = elevator[current] + 1
            queue.enqueue(current + u)
        }
        
    }

    print(elevator[g] == 0 ? "use the stairs" : elevator[g])

}
