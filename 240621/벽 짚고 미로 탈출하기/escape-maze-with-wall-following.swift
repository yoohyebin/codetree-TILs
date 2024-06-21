let n = Int(readLine()!)!
let rc = readLine()!.split(separator: " ").map{Int(String($0))!}
var (r,c) = (rc[0]-1, rc[1]-1)

var arr = [[String]]()
for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

let dx = [0, -1, 0, 1], dy = [1, 0, -1, 0]
var dir = 0
var result = 0

while true {
    if r+dx[dir] < 0 || r+dx[dir] >= n || c+dy[dir] < 0 || c+dy[dir] >= n {
        result += 1
        break
    }
    
    if arr[r+dx[dir]][c+dy[dir]] == "#" {
        dir += 1
    } else {
        let next_dir = (3+dir)%4
        
        if arr[r+dx[dir]+dx[next_dir]][c+dy[dir]+dy[next_dir]] != "#" {
            r += dx[dir]
            c += dy[dir]
            result += 1
            dir = next_dir
        }
        
        r += dx[dir]
        c += dy[dir]
        result += 1
    }
}

print(result)