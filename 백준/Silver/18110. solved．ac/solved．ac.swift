
import Foundation

let n = Int(readLine()!)!

if n != 0 {

    var arr: [Int] = []

    for _ in 0..<n {
        arr.append(Int(readLine()!)!)
    }

    let x = Int(round(Double(n) * 0.15)) // 위아래에서 제거할 15% 개수
    arr = Array(arr.sorted().dropFirst(x).dropLast(x))
    print(Int(round(Double(arr.reduce(0, +)) / Double(arr.count))))
} else {
    print(0)
}
