let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var grid = [[Int]]()
var starts = [[Int]]()

var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var queue = [(x: Int, y: Int)]()
let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]

for _ in  0..<n {
    grid.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for _ in 0..<k {
    starts.append(readLine()!.split(separator: " ").map{Int(String($0))!-1})
}

func bfs(){
    while !queue.isEmpty {
        let curr = queue.removeFirst()
        let x = curr.x, y = curr.y
        
        for i in 0..<4 {
            let nx = x+dx[i], ny = y+dy[i]
            
            if nx >= 0, nx < n, ny >= 0, ny < n, !visited[nx][ny], grid[nx][ny] == 0 {
                visited[nx][ny] = true
                result += 1
                queue.append((nx, ny))
            }
        }
    }
}

for start in starts {
    queue.append((start[0], start[1]))
    bfs()
}

var result = 0

for i in 0..<n {
    result += visited[i].filter{$0 == true}.count
}
print(result)