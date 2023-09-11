let arr = readLine()!.split(separator: "/").map({ Int($0)! })

let k = arr[0]
let d = arr[1]
let a = arr[2]

print(k + a < d || d == 0 ? "hasu" : "gosu")
