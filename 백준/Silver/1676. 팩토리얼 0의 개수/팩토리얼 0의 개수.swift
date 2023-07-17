import Foundation

let n = Int(readLine()!)!

var answer = 0

if n >= 5 {
    answer += n / 5
}

if n >= 25 {
    answer += n / 25
}

if n >= 125 {
    answer += n / 125
}

print(answer)