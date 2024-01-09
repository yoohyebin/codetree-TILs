func solution(_ n: String) -> String {
    return Int(n)!%2 == 0 && n.map{Int(String($0))!}.reduce(0,+) % 5 == 0 ? "Yes" : "No"
}

print(solution(readLine()!))