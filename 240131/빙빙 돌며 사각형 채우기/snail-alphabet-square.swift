let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = Array(repeating: Array(repeating: -1, count: m), count: n)
var (x,y) = (0,0)
var dir = 0
arr[x][y] = 0

if n*m >= 2 {
    for i in 1..<n*m {
        let (nx, ny) = (x+dx[dir], y+dy[dir])
        
        if nx<0 || nx>=n || ny<0 || ny>=m || arr[nx][ny] != -1 {
            dir = (dir+1)%4
        }
        
        (x,y) = (x+dx[dir], y+dy[dir])
        arr[x][y] = i%26
    }
}

for i in 0..<n {
    print(arr[i].map{String(UnicodeScalar($0+65)!)}.joined(separator: " "))
}