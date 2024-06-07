let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (r, c, dir) = (input[0]-1, input[1]-1, input[6])
var m = Array(input[2...5])
var temp = arr[r][c]
var (nr, nc) = (r,c)

var dx = [Int]()
var dy = [Int]()

if dir == 0 {
    dx = [-1, -1, 1, 1]
    dy = [-1, 1, 1, -1]
    m.reverse()
} else {
    dx = [-1, -1, 1, 1]
    dy = [1, -1, -1, 1]
}


for i in 0..<4 {
    let (x, y) = (dx[i], dy[i])
    
    for _ in 0..<m[i] {
        arr[nr][nc] = arr[nr+x][nc+y]
        nr += x
        nc += y
    }
}

if dir == 0 {
    arr[r-1][c+1] = temp
} else {
    arr[r-1][c-1] = temp
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}