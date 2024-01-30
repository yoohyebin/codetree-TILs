let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
var (x,y) = (0,0)
var dir = 0
arr[x][y] = 1

if n*m >= 2 {
    for i in 2...n*m {
        let (nx, ny) = (x+dx[dir], y+dy[dir])
        
        if nx<0 || nx>=n || ny<0 || ny>=m || arr[nx][ny] != 0 {
            dir = (dir+1)%4
        }
        
        (x,y) = (x+dx[dir], y+dy[dir])
        arr[x][y] = i
    }
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}