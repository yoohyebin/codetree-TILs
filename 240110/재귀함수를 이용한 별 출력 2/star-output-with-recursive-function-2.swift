func solution(_ n: Int) {
    if n == 0 {
        return
    }

    print(String(repeating: "* ", count: n))
    solution(n-1)
    print(String(repeating: "* ", count: n))
}

solution(Int(readLine()!)!)