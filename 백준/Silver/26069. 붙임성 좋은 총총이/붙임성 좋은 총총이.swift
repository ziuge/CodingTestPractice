import Foundation

let n = Int(readLine()!)!
var rainbow: [String:Bool] = [:]

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map({ String($0) })
    let a = arr[0]
    let b = arr[1]
    
    if a == "ChongChong" || b == "ChongChong" || rainbow[a] == true || rainbow[b] == true {
        rainbow[a] = true
        rainbow[b] = true
    } else {
        
    }
}
print(rainbow.count)
