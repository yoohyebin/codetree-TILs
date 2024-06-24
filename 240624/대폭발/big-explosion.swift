let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,r,c) = (input[0], input[1], input[2]-1, input[3]-1)
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
arr[r][c] = 1

let dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1]
var dist = 1

for _ in 1...m {
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    
    for x in 0..<n {
        for y in 0..<n {
            if !visited[x][y], arr[x][y] == 1{
                for d in 0..<4 {
                    let nx = dx[d]*dist + x
                    let ny = dy[d]*dist + y
                    
                    if nx>=0, nx<n, ny>=0, ny<n, arr[nx][ny] == 0   {
                        arr[nx][ny] = 1
                        visited[nx][ny] = true
                    }
                }
            }
        }
    }
    dist *= 2
}

var result = 0
for i in 0..<n {
    result += arr[i].filter{$0 == 1}.count
}
print(result)