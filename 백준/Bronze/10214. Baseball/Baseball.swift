import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var scoreY = 0
    var scoreK = 0
    for _ in 0..<9 {
        let arr = readLine()!.split(separator: " ").map({ Int($0)! })
        scoreY += arr[0]
        scoreK += arr[1]
    }
    if scoreY == scoreK {
        print("Draw")
    } else {
        print(scoreY > scoreK ? "Yonsei" : "Korea")
    }
}
