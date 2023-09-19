let n = Int(readLine()!)!

var queue: [Int] = Array(1...n).reversed()
var answer: [Int] = []

while queue.count > 1 {
    answer.append(queue.removeLast())
    let goLast = [queue.removeLast()]
    queue = goLast + queue
}

answer.append(queue.removeLast())

print(answer.map({ String($0) }).joined(separator: " "))
