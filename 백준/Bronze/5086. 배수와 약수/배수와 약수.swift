import Foundation

while let nums = readLine()?.split(separator: " ").map({ Int($0)! }), nums != [0, 0] {
    if nums[1] % nums[0] == 0 {
        print("factor")
    } else if nums[0] % nums[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}