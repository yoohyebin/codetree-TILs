let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,t) = (input[0], input[1], input[2])

let dx = [-1, 0, 1, 0], dy = [0, 1, 0 ,-1]
let dirMap = ["U": 0, "R": 1, "D": 2, "L": 3]
var marbles = [(r: Int, c: Int, d: Int, w: Int)]()

for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{String($0)}
    marbles.append((Int(data[0])!-1, Int(data[1])!-1, dirMap[data[2]]!, Int(data[3])!))
}


for _ in 0..<t {
    var grid = Array(repeating: Array(repeating: [(d: Int, w: Int)](), count: n), count: n)
    
    for i in 0..<marbles.count {
        let nx = marbles[i].r + dx[marbles[i].d]
        let ny = marbles[i].c + dy[marbles[i].d]
        
        if nx<0 || nx>=n || ny<0 || ny>=n {
            marbles[i].d = (marbles[i].d+2)%4
        } else {
            marbles[i].r = nx
            marbles[i].c = ny
        }
        
        grid[marbles[i].r][ marbles[i].c].append((marbles[i].d, marbles[i].w))
    }
    
    var newMarbles = [(r: Int, c: Int, d: Int, w: Int)]()
    
    for i in 0..<n {
        for j in 0..<n {
            if !grid[i][j].isEmpty {
                let maxDir = grid[i][j].max(by: {$0.w < $1.w})!.d
                let sum = grid[i][j].reduce(0){$0 + $1.w}
                newMarbles.append((i, j, maxDir, sum))
            }
        }
    }
    
    marbles = newMarbles
}

print(marbles.count, marbles.max(by: {$0.w < $1.w})?.w ?? 0)