import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {

    var answer = 0
    var visited = Array(repeating: false, count: n)
    
    func dfs(_ to: Int) {
        visited[to] = true
        
        for i in 0..<n {
            if computers[to][i] == 1 && visited[i] == false {
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            answer += 1
            dfs(i)
        }
    }
    
    return answer
}