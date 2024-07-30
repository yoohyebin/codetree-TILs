let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = Int.max
var visited = Array(repeating: false, count: 2*n)

func cal() -> Int {
    var sum = 0
    
    for i in 0..<2*n {
        if visited[i] {
            sum += arr[i]
        } else {
            sum -= arr[i]
        }
    }
    
    return abs(sum)
}

func solution(_ cnt: Int, _ idx: Int) {
    if cnt == n {
        result = min(result, cal())
        return
    }
    
    if idx == 2*n {
        return
    }
    
    visited[idx] = true
    solution(cnt+1, idx+1)
    visited[idx] = false
    
    solution(cnt, idx+1)
}

solution(0, 0)

print(result)