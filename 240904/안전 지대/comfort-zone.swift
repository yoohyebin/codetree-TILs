let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var grid = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
var maxValue = 0
var answer_k = 1, max_zone_num = 0
var num = 0


for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    grid.append(input)
    maxValue = max(maxValue, input.max() ?? 0)
}

func dfs(_ x: Int, _ y: Int, _ k: Int) {
    for i in 0..<4 {
        let nx = x+dx[i], ny = y+dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < m, grid[nx][ny] > k, !visited[nx][ny] {
            visited[nx][ny] = true
            dfs(nx, ny, k)
        }
    }
}


for idx in 1...maxValue {
    num = 0
    visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for i in 0..<n {
        for j in 0..<m {
            if grid[i][j] > idx, !visited[i][j] {
                visited[i][j] = true
                num += 1
                dfs(i, j, idx)
            }
        }
    }
    
    if max_zone_num < num {
        max_zone_num = num
        answer_k = idx
    }
}

print(answer_k, max_zone_num)