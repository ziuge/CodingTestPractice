
import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })

for x in -999...999 {
    for y in -999...999 {
        if arr[0] * x + arr[1] * y == arr[2] && arr[3] * x + arr[4] * y == arr[5] {
            print(x, y)
            break
        }
    }
}
