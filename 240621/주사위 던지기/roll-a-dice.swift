let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var (x, y) = (input[2]-1, input[3]-1)
let dirs = readLine()!.split(separator: " ").map{String($0)}
let dir_mapper = [
    "R": 0,
    "L": 1,
    "U": 2,
    "D": 3
]
let dx = [0, 0 , -1, 1], dy = [1, -1, 0 ,0]
var grid = Array(repeating: Array(repeating: 0, count: n), count: n)
var (u,f,r) = (1,2,3)

func simulate(_ dir: Int) {
    let (nx, ny) = (x+dx[dir], y+dy[dir])
    
    if nx < 0 || nx >= n || ny < 0 || ny >= n {
        return
    }
    
    x = nx
    y = ny
    
    if dir == 0 {
        (u,f,r) = (7-r, f, u)
    } else if dir == 1 {
        (u,f,r) = (r, f, 7-u)
    } else if dir == 2 {
        (u,f,r) = (f, 7-u, r)
    } else if dir == 3 {
        (u,f,r) = (7-f, u, r)
    }
    
    grid[x][y] = 7-u
}

grid[x][y] = 6
for dir in dirs {
    simulate(dir_mapper[dir] ?? 0)
}

var result = 0
for i in 0..<n {
    result += grid[i].reduce(0, +)
}

print(result)