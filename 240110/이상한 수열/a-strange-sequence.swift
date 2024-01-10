func solution(_ n: Int) -> Int {
    if n == 1 {return 1}
    if n == 2 {return 2}

    return solution(n/3) + solution(n-1)
} 

print(solution(Int(readLine()!)!))