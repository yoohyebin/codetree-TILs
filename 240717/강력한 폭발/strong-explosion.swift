let n = Int(readLine()!)!
var bombs = [(x: Int, y: Int)]()
var grid = Array(repeating: Array(repeating: 0, count: n), count: n)
var result = 0

for i in 0..<n {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    for (j,b) in data.enumerated() {
        if b == 1 {
            bombs.append((i,j))
        }
    }
}


func bomb() -> Int {
    let bombType: [[(x: Int, y: Int)]] = [
        [],
        [(-2, 0), (-1, 0), (0, 0), (1, 0), (2, 0)],
        [(-1, 0), (1, 0), (0, 0), (0, -1), (0, 1)],
        [(-1, -1), (-1, 1), (0, 0), (1, -1), (1, 1)]
    ]
    
    var bomb_grid = Array(repeating: Array(repeating: 0, count: n), count: n)
    var bombCnt = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if grid[i][j] != 0 {
                for (x, y) in bombType[grid[i][j]] {
                    if x+i>=0, x+i<n, y+j>=0, y+j<n {
                        bomb_grid[x+i][y+j] = 1
                    }
                }
            }
        }
    }
    
    for i in 0..<n {
        bombCnt += bomb_grid[i].reduce(0, +)
    }
    
    return bombCnt
}

func solution(_ cnt: Int) {
    if cnt == bombs.count {
        result = max(result, bomb())
        return
    }
    
    for i in 1...3 {
        let (x,y) = bombs[cnt]
        grid[x][y] = i
        solution(cnt+1)
    }
}

solution(0)
print(result)