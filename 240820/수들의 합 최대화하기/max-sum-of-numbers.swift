let n = Int(readLine()!)!
var arr = [[Int]]()
var visited = Array(repeating: false, count: n+1)
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution(_ depth: Int, _ sum: Int) {
    if depth == n {
        result = max(result, sum)
        return
    }
    
    for i in 0..<n {
        if visited[i] {
            continue
        }
        
        visited[i] = true
        
        solution(depth+1, sum+arr[depth][i])
        
        visited[i] = false
    }
}

solution(0, 0)
print(result)