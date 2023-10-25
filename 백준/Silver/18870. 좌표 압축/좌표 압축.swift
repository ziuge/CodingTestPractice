import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let coor = Set(arr).sorted()

var dict: [Int:Int] = [:]

for i in 0..<coor.count {
    dict[coor[i]] = i
}

print(arr.map({ String(dict[$0]!) }).joined(separator: " "))
