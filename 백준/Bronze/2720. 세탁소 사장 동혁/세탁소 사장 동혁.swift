let t = Int(readLine()!)!

for _ in 0..<t {
    var answer: [Int] = []
    var c = Int(readLine()!)!
    answer.append(c / 25)
    c = c % 25
    answer.append(c / 10)
    c = c % 10
    answer.append(c / 5)
    c = c % 5
    answer.append(c)
    print(answer.map({ String($0) }).joined(separator: " "))
}

