import Foundation

// 다른 알파벳이 1개인지 확인하는 함수
func canChange(_ from: String, _ to: String) -> Bool {
    return zip(from, to).filter({ $0 == $1 }).count == from.count - 1
}

// 메인 함수
func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var queue: [[String]] = []
    var queueIndex = 0
    var answer = 0
    
    // target 단어를 갖고 있지 않다면 0을 return
    if !words.contains(target) {
        return 0
    }
    
    // 다른 알파벳이 1개인 단어를 모두 큐에 넣음
    for i in words {
        if canChange(begin, i) {
            queue.append([i, "0"])
        }
    }
    
    // 큐를 돌면서 BFS 진행
    while queue.count >= queueIndex {
        let current = queue[queueIndex][0]
        let depth = Int(queue[queueIndex][1])!
        queueIndex += 1

        // target과 현재 값이 같다면 answer 출력
        if current == target {
            answer = depth + 1
            break
        }
        
        // words 안의 단어를 돌면서 바꿀 수 있는지 확인
        for word in words {
            if canChange(current, word) == true {
                queue.append([word, String(depth + 1)])
            }
        }
    }
    
    return answer
}

