let n = Int(readLine()!)!

var arr = [[Int]]()
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1]
var result = 0

func solution() -> Int {
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var cnt = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] != 0 {
                for (x, y) in zip(dx, dy) {
                    if i+x >= 0, i+x < n, j+y >= 0, j+y < n, !visited[i+x][j+y], arr[i][j] == arr[i+x][j+y]{
                        cnt += 1
                    }
                }
            }
            visited[i][j] = true
        }
    }
    
    return cnt
}

for r in 0..<n {
    for c in 0..<n {
        let temp = arr
        
        let value = arr[r][c]
        
        for i in 1..<value {
            for (x, y) in zip(dx, dy) {
                let nx = r + x*i, ny = c + y*i
                
                if nx >= 0, nx < n, ny >= 0, ny < n {
                    arr[nx][ny] = 0
                }
            }
        }
        arr[r][c] = 0
        
        for l in 0..<n {
            for i in stride(from: n-1, to: 0, by: -1) {
                if arr[i][l] == 0 {
                    for j in stride(from: i-1, through: 0, by: -1) {
                        if arr[j][l] != 0 {
                            arr[i][l] = arr[j][l]
                            arr[j][l] = 0
                            break
                        }
                    }
                }
            }
        }
        
        result = max(result, solution())
        arr = temp
    }
}

print(result)