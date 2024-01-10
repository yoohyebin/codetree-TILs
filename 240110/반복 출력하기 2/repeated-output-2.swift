func solution(_ n: Int) { 
    if n == 0 {
        return
    }
    solution(n-1)
    print("HelloWorld")
}
solution(Int(readLine()!)!)