let arr = readLine()!.split(separator: " ").map({ Int($0)! })
var a = arr[0]
var b = arr[1]
var c = arr[2]
let cookTime = Int(readLine()!)!

c += cookTime
if c >= 60 {
    b += c / 60
    c = c % 60
}

if b >= 60 {
    a += b / 60
    b = b % 60
}

if a > 23 {
    a = a % 24
}

print(a, b, c)