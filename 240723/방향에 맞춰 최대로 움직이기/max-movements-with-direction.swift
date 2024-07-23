let n = Int(readLine()!)!
var board = [[Int]]()
var board_Dir = [[Int]]()
let dx = [-1, -1, 0, 1, 1, 1, 0, -1]
let dy = [0, 1, 1, 1, 0, -1, -1, -1]
var result = 0

for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for _ in 0..<n {
    board_Dir.append(readLine()!.split(separator: " ").map{Int(String($0))!-1})
}

let input = readLine()!.split(separator: " ").map{Int(String($0))! - 1}
let (r, c) = (input[0], input[1])

func solution(_ x: Int, _ y: Int, _ cnt: Int) {
    result = max(result, cnt)

    let d = board_Dir[x][y]
    
    for i in 0..<n {
        let nx = x + dx[d]*i, ny = y + dy[d]*i
        
        if nx >= 0, nx < n, ny >= 0, ny < n, board[nx][ny] > board[x][y] {
            solution(nx, ny, cnt+1)
        }
    }
}

solution(r, c, 0)
print(result)