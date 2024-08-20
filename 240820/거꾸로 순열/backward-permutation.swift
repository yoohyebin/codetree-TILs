let n = Int(readLine()!)!
var selected = [Int]()
var visited = Array(repeating: false, count: n+1)

func solution(_ depth: Int) {
    if depth == n {
        print(selected.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in stride(from: n, through: 1, by: -1) {
        if visited[i] {
            continue
        }
        
        visited[i] = true
        selected.append(i)
        solution(depth+1)
        
        visited[i] = false
        selected.removeLast()
    }
}

solution(0)