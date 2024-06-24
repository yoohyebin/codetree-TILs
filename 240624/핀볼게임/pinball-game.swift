let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]
var dir = 0

func move(_ x: Int, _ y: Int) {
    var current_dir = dir
    var (nx, ny) = (x, y)
    var cnt = 1
    
    while true {
        if arr[nx][ny] == 1 {
            if current_dir % 2 == 0 {
                current_dir = (current_dir + 3)%4
            } else {
                current_dir = (current_dir+1)%4
            }
        } else if arr[nx][ny] == 2 {
            if current_dir % 2 == 0 {
                current_dir = (current_dir+1)%4
            } else {
                current_dir = (current_dir + 3)%4
            }
        }
        
        nx += dx[current_dir]
        ny += dy[current_dir]
        cnt += 1
        
        if nx < 0 || nx >= n || ny < 0 || ny >= n {
            break
        }
    }
    
    result = max(cnt, result)
}

for i in [0, n-1] {
    for j in  0..<n {
        move(i, j)
    }
    dir += 1
    
    for j in 0..<n {
        move(j, i)
    }
    dir += 1
}

print(result)