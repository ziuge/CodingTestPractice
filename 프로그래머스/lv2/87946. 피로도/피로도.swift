import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var visited = [Bool](repeating: false, count: dungeons.count)
    
    func DFS(_ k: Int, _ count: Int) {
        answer = max(answer, count)

        for i in 0...dungeons.count - 1 {
            if visited[i] == false && k >= dungeons[i][0]{
                visited[i] = true
                DFS(k - dungeons[i][1], count + 1)
                visited[i] = false
            }
        }
    }
    
    DFS(k, 0)
    
    return answer
}
