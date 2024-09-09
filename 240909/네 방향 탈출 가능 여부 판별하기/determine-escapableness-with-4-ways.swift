let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var grid = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var queue = [(x: Int, y: Int)]()
let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]

for _ in  0..<n {
    grid.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func bfs() -> Int {
    while !queue.isEmpty {
        let curr = queue.removeFirst()
        let x = curr.x, y = curr.y
        
        if x == n-1, y == m-1 {
            return 1
        }
        
        for i in 0..<4 {
            let nx = x+dx[i], ny = y+dy[i]
            
            if nx >= 0, nx < n, ny >= 0, ny < m, !visited[nx][ny], grid[nx][ny] == 1 {
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
    }
    
    return 0
}

queue.append((0, 0))

print(bfs())