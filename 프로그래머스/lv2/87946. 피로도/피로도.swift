import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var cases = permute(Array<Int>(0...dungeons.count-1))
    var hp = k
    // var answer = 0
    var maxDungeons = 0
    
    cases.forEach { item in
        hp = k
        var tempMax = 0
        for i in 0...item.count - 1 {
            if dungeons[item[i]][0] <= hp && dungeons[item[i]][1] <= hp { // 최소 필요 피로도, 소모 피로도
                hp -= dungeons[item[i]][1]
                tempMax += 1
            } else {
                break
            }
            maxDungeons = max(tempMax, maxDungeons)
        }
    }    
    
    return maxDungeons
}

func permute(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var visited = [Bool](repeating: false, count: nums.count)

    func permutation(_ temp: [Int]) {
        if temp.count == nums.count {
            result.append(temp)
        }

        for i in 0...nums.count - 1 {
            if visited[i] == true {
                continue
            } else {
                visited[i] = true
                permutation(temp + [nums[i]])
                visited[i] = false
            }
        }

    }
    permutation([])

    return result
}