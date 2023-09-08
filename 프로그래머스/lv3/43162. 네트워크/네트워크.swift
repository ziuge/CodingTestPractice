import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var computersDict: [Int: [Int]] = [:]
    for i in 0..<n {
        for j in 0..<n {
            if computers[i][j] == 1 {
                if computersDict[i] == nil {
                    computersDict[i] = [j]
                } else {
                    computersDict[i]!.append(j)
                }
            }
        }
    }
    
    var answer = 0
    var visited = Array(repeating: false, count: n)
    
    func dfs(_ from: Int, _ to: Int) {
        visited[to] = true
        
        for i in 0..<n {
            if computersDict[to]!.contains(i) && visited[i] == false {
                dfs(from, i)
            }
        }
    }
    
    for i in 0..<n {
        for j in computersDict[i]! {
            if visited[j] == false {
                visited[i] = true
                answer += 1
                dfs(i, j)
            }
        }
    }
    
    return answer
}
