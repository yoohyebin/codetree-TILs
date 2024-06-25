let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,t) = (input[0], input[1], input[2])

var board = [[Int]]()
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var marbles = [(x: Int, y: Int)]()
for _ in 0..<m {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    marbles.append((value[0]-1, value[1]-1))
}

let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]

for _ in 0..<t {
    var newMarbles = [(x: Int, y: Int)]()
    
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
        
        if !newMarbles.contains(where: {$0.x == mx && $0.y == my}) {
            newMarbles.append((mx,my))
        }
    }
    
    marbles = newMarbles
}

print(marbles.count)