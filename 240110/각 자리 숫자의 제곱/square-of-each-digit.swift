import Foundation

func solution(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    return Int(pow(Double(n%10), 2.0)) + solution(n/10)
}

print(solution(Int(readLine()!)!))