import Foundation

var xList: [Int] = []
var yList: [Int] = []

for _ in 0..<3 {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    let x = arr[0]
    let y = arr[1]
    
    if xList.contains(x) {
        xList.remove(at: xList.firstIndex(of: x)!)
    } else {
        xList.append(x)
    }
    
    if yList.contains(y) {
        yList.remove(at: yList.firstIndex(of: y)!)
    } else {
        yList.append(y)
    }
}

print(xList[0], yList[0])
