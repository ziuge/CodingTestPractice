let n = UInt64(readLine()!)!
var recDict: [UInt64: UInt64] = [1:1, 2:2, 3:3]

func rec(_ n: UInt64) -> UInt64 {
    if recDict[n] == nil {
        recDict[n] = (rec(n - 1) + rec(n - 2)) % 10007
    }
    return recDict[n]!
}

print(rec(n))