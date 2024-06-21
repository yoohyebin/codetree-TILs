import Foundation
let n = Int(readLine()!)!
let rc = readLine()!.split(separator: " ").map{Int(String($0))!}
var (r,c) = (rc[0]-1, rc[1]-1)

var arr = [[String]]()
for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

let dx = [0, 1, 0, -1], dy = [1, 0, -1, 0]
var dir = 0
var result = 0
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 4), count: n), count: n)

func in_range(_ x: Int, _ y: Int) -> Bool {
    return x >= 0 && x < n && y >= 0 && y < n
}

func simulate() {
    if visited[r][c][dir] {
        print(-1)
        exit(0)
    }
    
    visited[r][c][dir] = true
    let (nx, ny) = (r+dx[dir], c+dy[dir])
    
    if in_range(nx, ny), arr[nx][ny] == "#" {
        dir = (3+dir)%4
    } else if !in_range(nx, ny) {
        r = nx
        c = ny
        result += 1
        
        return
    } else {
        let rx = nx + dx[(dir+1)%4]
        let ry = ny + dy[(dir+1)%4]
        
        if in_range(rx, ry), arr[rx][ry] == "#" {
            r = nx
            c = ny
            result += 1
        } else {
            r = rx
            c = ry
            dir = (dir+1)%4
            result += 2
        }
    }
}


while in_range(r, c) {
    simulate()
}

print(result)