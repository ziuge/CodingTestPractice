import Foundation

while true {
    let arr = readLine()!.split(separator: " ").map({ Int($0)! })
    
    let n = arr[0]
    let m = arr[1]
    
    if arr[0] == arr[1] {
        break
    }
    
    var answer = ""
    
    answer = n > m ? "multiple" : "factor"
    
    if max(n, m) % min(n, m) != 0 {
        answer = "neither"
    }
    
    print(answer)
    
}
