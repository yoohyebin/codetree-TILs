let n = Int(readLine()!)!-1
var jumps = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = Int.max

func solution(_ cnt: Int, _ place: Int) {
    if place == n {
        result = min(result, cnt)
        return
    }
    
    for jump in stride(from: 1, through: jumps[place], by: 1) {
        if place + jump <= n {
            solution(cnt+1, place+jump)
        }
    }
    
}

solution(0, 0)

print(result == Int.max ? -1 : result)