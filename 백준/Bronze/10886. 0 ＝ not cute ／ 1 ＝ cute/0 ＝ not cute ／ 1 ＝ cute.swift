
import Foundation

let n = Int(readLine()!)!
var cute = 0
var notCute = 0
for _ in 0..<n {
    let opinion = Int(readLine()!)!
    if opinion == 1 {
        cute += 1
    } else {
        notCute += 1
    }
}

print(cute > notCute ? "Junhee is cute!" : "Junhee is not cute!")
