let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

let nt = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, _) = (nt[0], nt[1])
let ops = readLine()!.map{String($0)}
var arr = [[Int]]()
var x = n/2, y = n/2
var dir = 0
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

result = arr[x][y]

for op in ops {
    if op == "R" {
        dir = (dir+1)%4
    } else if op == "L" {
        dir = (4+dir-1)%4
    } else {
        let (nx,ny) = (x+dx[dir], y+dy[dir])
        
        if nx>=0 && nx<n && ny>=0 && ny<n {
            (x,y) = (nx, ny)
            result += arr[nx][ny]
        }
    }
}

print(result)