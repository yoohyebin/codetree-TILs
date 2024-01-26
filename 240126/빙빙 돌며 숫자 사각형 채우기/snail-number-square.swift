let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
var dirIndex = 0
var (x,y) = (0,0)
arr[0][0] = 1

for i in 2...n*m {
    let (nx, ny) = (x+dx[dirIndex], y+dy[dirIndex])
    
    if nx<0 || nx>=n || ny<0 || ny>=m || arr[nx][ny] != 0 {
        dirIndex = (dirIndex+1)%4
    }
    
    (x, y) = (x+dx[dirIndex], y+dy[dirIndex])
    arr[x][y] = i
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}