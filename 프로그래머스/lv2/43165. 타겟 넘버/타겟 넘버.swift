import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    let end = numbers.count
    var answer = 0
    
    func dfs(_ num: Int, count: Int) {
        if count < end {
            dfs(num + numbers[count], count: count + 1)
            dfs(num - numbers[count], count: count + 1)
        } else {
            if target == num {
                answer += 1
            }
        }
    }

    dfs(numbers[0], count: 1)
    dfs(-numbers[0], count: 1)
    
    return answer
}