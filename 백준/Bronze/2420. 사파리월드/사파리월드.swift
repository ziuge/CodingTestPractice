let arr = readLine()!.split(separator: " ").map({ Int($0)! })
print(abs(arr[0]-arr[1]))
