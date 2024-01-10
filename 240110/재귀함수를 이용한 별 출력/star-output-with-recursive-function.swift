let n = Int(readLine()!)!
func solution(_ a: Int) {
    if a > n {
        return
    }

    print(String(repeating: "*", count: a))
    solution(a+1)
}
solution(1)