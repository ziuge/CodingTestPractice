
import Foundation
let n = Int(readLine()!)!
for i in 1...n {
    print(String(repeating: " ", count: n - i), String(repeating: "*", count: 2 * i - 1), separator: "")
}
