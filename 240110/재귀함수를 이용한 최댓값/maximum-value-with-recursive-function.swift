func solution(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }

    return arr[n] > solution(n-1) ? arr[n] : solution(n-1)
}

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(n-1))