func solution(_ s: String) -> Bool {
    return s == String(s.reversed())
}

print(solution(readLine()!) ? "Yes" : "No")