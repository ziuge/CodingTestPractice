import Foundation

var creditSum = 0.0
var gradeSum = 0.0

func gradeToDouble(_ grade: String) -> Double {
    switch grade {
    case "A+" : return 4.5
    case "A0" : return 4.0
    case "B+" : return 3.5
    case "B0" : return 3.0
    case "C+" : return 2.5
    case "C0" : return 2.0
    case "D+" : return 1.5
    case "D0" : return 1.0
    default : return 0.0
    }
}

for _ in 0..<20 {
    let arr = readLine()!.split(separator: " ")
    let credit = Double(arr[1])!
    let grade = gradeToDouble(String(arr[2]))
    
    if arr[2] != "P" {
        creditSum += credit
        gradeSum += grade * credit
    }
    
}

print(gradeSum/creditSum)