let n = Int(readLine()!)!

for i in 1...n {
    print(String(repeating: " ", count: n - i) + String(repeating: "*", count: i * 2 - 1))
}

for i in 1..<n {
    print(String(repeating: " ", count: i) + String(repeating: "*", count: (n - i) * 2 - 1))
}