let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
var result = [String]()

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (r,c) = (input[0], input[1])
    var cnt = 0
    
    arr[r-1][c-1] = true
    
    for i in 0..<4 {
        let (nx, ny) = (r+dx[i], c+dy[i])
        
        if nx>0, nx<=n, ny>0, ny<=n, arr[nx][ny] {
            cnt += 1
        }
    }
    result.append(cnt==3 ? "1" : "0")
}

print(result.joined(separator: "\n"))