let n = Int(readLine()!)!
var arr = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var bombBlock = 0, maxBlock = 0
var blockCnt = 0
let dx = [1, -1, 0, 0], dy = [0, 0, -1, 1]

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int, _ num: Int) {
    for i in 0..<4 {
        let nx = x + dx[i], ny = y + dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < n, arr[nx][ny] == num, !visited[nx][ny] {
            visited[nx][ny] = true
            blockCnt += 1
            dfs(nx, ny, num)
        }
    }
}


for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j] {
            visited[i][j] = true
            blockCnt = 1
            dfs(i, j, arr[i][j])
            
            if blockCnt >= 4 {
                bombBlock += 1
            }
            maxBlock = max(maxBlock, blockCnt)
        }
    }
}

print(bombBlock, maxBlock)