let n = Int(readLine()!)!
var grid = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
var cnt = 0
var results = [Int]()

for _ in 0..<n {
    grid.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int) {
    for i in 0..<4 {
        let nx = x+dx[i], ny = y+dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < n, grid[nx][ny] == 1, !visited[nx][ny] {
            visited[nx][ny] = true
            cnt += 1
            dfs(nx, ny)
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j], grid[i][j] == 1 {
            visited[i][j] = true
            cnt = 1
            dfs(i, j)
            results.append(cnt)
        }
    }
}

print(results.count)
results.sort()
print(results.map{String($0)}.joined(separator: "\n"))