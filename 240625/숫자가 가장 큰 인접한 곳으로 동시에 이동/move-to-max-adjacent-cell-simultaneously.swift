struct position: Hashable {
    var x: Int
    var y: Int
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,t) = (input[0], input[1], input[2])

var board = [[Int]]()
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var marbles = [position]()
for _ in 0..<m {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    marbles.append(position(x: value[0]-1, y: value[1]-1))
}

let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]

for _ in 0..<t {
    var newMarbles = [position: Int]()
     
    for marble in marbles {
        var max = 0
        var (mx, my) = (0,0)
        
        for i in 0..<4 {
            let (nx, ny) = (marble.x+dx[i], marble.y+dy[i])
            if nx >= 0, nx < n, ny >= 0,ny < n, board[nx][ny] > max {
                max = board[nx][ny]
                (mx, my) = (nx, ny)
            }
        }
        newMarbles[position(x: mx, y: my), default: 0] += 1
    }
    
    marbles = Array(newMarbles.filter{$0.value < 2}.keys)
}

print(marbles.count)