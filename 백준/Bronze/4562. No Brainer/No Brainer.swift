let z = Int(readLine()!)!
for _ in 0..<z {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    print(arr[0] >= arr[1] ? "MMM BRAINS" : "NO BRAINS")
}