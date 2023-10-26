import Foundation

var wDict: [String:Int] = [:]

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        if wDict["\(a) \(b) \(c)"] == nil {
            wDict["\(a) \(b) \(c)"] = 1
        }
        return wDict["\(a) \(b) \(c)"]!
    } else if a > 20 || b > 20 || c > 20 {
        if wDict["\(a) \(b) \(c)"] == nil {
            wDict["\(a) \(b) \(c)"] = w(20, 20, 20)
        }
        return wDict["\(a) \(b) \(c)"]!
    } else if a < b && b < c {
        if wDict["\(a) \(b) \(c)"] == nil {
            wDict["\(a) \(b) \(c)"] = w(a, b, c - 1) + w(a, b - 1, c - 1) - w(a, b - 1, c)
        }
        return wDict["\(a) \(b) \(c)"]!
    } else {
        if wDict["\(a) \(b) \(c)"] == nil {
            wDict["\(a) \(b) \(c)"] = w(a - 1, b, c) + w(a - 1, b - 1, c) + w(a - 1, b, c - 1) - w(a - 1, b - 1, c - 1)
        }
        return wDict["\(a) \(b) \(c)"]!
    }
}

while true {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    let a = arr[0]
    let b = arr[1]
    let c = arr[2]
    
    if a == -1 && b == -1 && c == -1 {
        break
    } else {
        print("w(\(a), \(b), \(c)) =", w(a, b, c))
    }
}
