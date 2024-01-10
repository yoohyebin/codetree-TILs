func solution(_ n: Int) -> Int {
    if n == 1 {
        return 2
    } 
    if n == 2 {
        return 4
    }

    return (solution(n-1)*solution(n-2))%100
}

print(solution(Int(readLine()!)!))