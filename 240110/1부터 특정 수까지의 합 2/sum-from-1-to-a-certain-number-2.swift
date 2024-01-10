func solution(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    return n+solution(n-1)
}

print(solution(Int(readLine()!)!))