func solution(_ n: Int) -> Int {
    if n <= 1 {return n}
    return n+solution(n-2)
} 
print(solution(Int(readLine()!)!))