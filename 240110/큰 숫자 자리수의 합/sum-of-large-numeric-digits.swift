func solution(_ n: Int) -> Int {
    if n == 0 {return 0}
    return n%10 + solution(n/10)
}
let n = readLine()!.split(separator: " ").map{Int(String($0))!}.reduce(1,*)
print(solution(n))