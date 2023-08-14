import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let n = arr[0]
let m = arr[1]

var nums = readLine()!.split(separator: " ").map({ Int($0)! })
nums.insert(0, at: 0)

for i in 1..<nums.count {
    nums[i] = nums[i-1] + nums[i]
}

for _ in 0..<m {
    let tempArr = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = tempArr[0] - 1
    let j = tempArr[1]

    print(nums[j] - nums[i])
}