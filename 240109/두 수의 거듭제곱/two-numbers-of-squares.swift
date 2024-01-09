import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    return Int(pow(Double(a), Double(b)))
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1]))