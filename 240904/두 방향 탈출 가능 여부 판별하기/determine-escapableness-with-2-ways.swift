let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = [[Int]]()
let dx = [1,0], dy = [0,1]
var result = 0
var visited = Array(repeating: Array(repeating: false, count: m), count: n)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int) {
    if x == n-1, y == m-1 {
        result = 1
        return
    }
    
    for i in 0..<2 {
        let nx = x + dx[i], ny = y + dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < m, arr[nx][ny] != 0, !visited[nx][ny] {
            visited[nx][ny] = true
            dfs(nx, ny)
        }
    }
}

if arr[0][0] == 1 {
    dfs(0, 0)
}

print(result)