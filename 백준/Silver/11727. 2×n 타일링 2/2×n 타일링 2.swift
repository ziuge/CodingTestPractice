let n = Int(readLine()!)!
var recDict: [Int: Int] = [1:1, 2:3, 3:5]

func rec(_ n: Int) -> Int {
    if recDict[n] == nil {
        recDict[n] = (rec(n - 1) + rec(n - 2) * 2) % 10007
    }
    return recDict[n]!
}

print(rec(n))