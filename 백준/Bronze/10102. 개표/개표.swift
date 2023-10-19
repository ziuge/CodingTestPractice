import Foundation

let v = Int(readLine()!)!
let poll = Array(readLine()!)

let result = poll.filter{ $0 == "A" }.count > poll.filter{ $0 == "B" }.count ? "A" : "B"

print(poll.filter{ $0 == "A" }.count == poll.filter{ $0 == "B" }.count ? "Tie" : result)