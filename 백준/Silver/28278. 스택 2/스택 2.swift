import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    let temp = arr[0]
    
    switch temp {
    case 1:
        stack.append(arr[1])
    case 2:
        print(stack.isEmpty ? -1 : stack.removeLast())
    case 3:
        print(stack.count)
    case 4:
        print(stack.isEmpty ? 1 : 0)
    case 5:
        print(stack.isEmpty ? -1 : stack[stack.count - 1])
    default:
        print()
    }
}
