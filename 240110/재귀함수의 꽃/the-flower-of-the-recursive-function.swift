func solution(_ n: Int) {
    if n == 0 {
        return
    }

    print(n, terminator: " ")
    solution(n-1)
    print(n, terminator: " ")
}

solution(Int(readLine()!)!)