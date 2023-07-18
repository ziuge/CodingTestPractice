import Foundation

let t = Int(readLine()!)!

func ignition(_ n: Int) -> Int {
    return Int(exactly: n < 4 ? Int(pow(2.0, Double(n - 1))) : ignition(n-1) + ignition(n-2) + ignition(n-3))!
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    print(ignition(n))
}
