import Foundation

let t = Int(readLine()!)!

func combinations(_ n: Int, choose k: Int) -> Int {
    var answer = 1
    
    for i in 0..<k {
        answer *= n - i
        answer /= i + 1
    }
    
    return answer
}

for _ in 0..<t {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    print(combinations(arr[1], choose: arr[0]))
}
