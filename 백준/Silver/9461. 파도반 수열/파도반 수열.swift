import Foundation

let t = Int(readLine()!)!

var pDict = [1:1, 2:1, 3:1, 4:2, 5:2]

func P(_ n: Int) -> Int {
    var answer = 0
    
    if pDict[n] != nil {
        answer = pDict[n]!
    } else {
        pDict[n] = P(n-1) + P(n-5)
        answer = pDict[n]!
    }
    
    return answer
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    print(P(n))
}
