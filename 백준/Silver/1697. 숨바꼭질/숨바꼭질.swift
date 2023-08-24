import Foundation

let temp = readLine()!.split(separator: " ").map({ Int($0)! })
let n = temp[0]
let k = temp[1]

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

var hidenseek = Array(repeating: 0, count: max(n, k) * 2 + 1)
var queue = Queue<Int>()

queue.enqueue(n)

while queue.size != queue.frontValue {
    let current = queue.dequeue()!

    if current - 1 >= 0 && current - 1 != n && hidenseek[current - 1] == 0 {
        hidenseek[current - 1] = hidenseek[current] + 1
        queue.enqueue(current - 1)
    }
    if current + 1 < k * 2 && current + 1 != n && hidenseek[current + 1] == 0 {
        hidenseek[current + 1] = hidenseek[current] + 1
        queue.enqueue(current + 1)
    }
    if current * 2 < k * 2 && current * 2 != n && hidenseek[current * 2] == 0 {
        hidenseek[current * 2] = hidenseek[current] + 1
        queue.enqueue(current * 2)
    }
}

print(hidenseek[k])

