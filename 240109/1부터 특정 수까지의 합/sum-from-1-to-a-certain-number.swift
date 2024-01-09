func solution(_ n: Int) -> Int {
    var sum = 0
    for i in 1...n {
        sum += i
    }

    return sum/10
}

let n = Int(readLine()!)!
print(solution(n))