let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,t) = (input[0], input[1], input[2])

var marbles = [(x: Int, y: Int, d: Int, w: Int)]()
let dx = [-1, 0, 1, 0], dy = [0, 1, 0 ,-1]
let dirMap = ["U": 0, "R": 1, "D": 2, "L": 3]

for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{String($0)}
    marbles.append((Int(data[0])!-1, Int(data[1])!-1, dirMap[data[2]]!, Int(data[3])!))
}

for _ in 0..<t {
    
    for i in 0..<marbles.count {
        let nx = marbles[i].x + dx[marbles[i].d]
        let ny = marbles[i].y + dy[marbles[i].d]
        
        if nx<0 || nx>=n || ny<0 || ny>=n {
            marbles[i].d = (marbles[i].d+2)%4
        }
        
        marbles[i].x += dx[marbles[i].d]
        marbles[i].y += dy[marbles[i].d]
    }
    
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var newMarbles = [(x: Int, y: Int, d: Int, w: Int)]()
    for marble in marbles {
        if !visited[marble.x][marble.y] {
            let filterValue = marbles.filter{$0.x == marble.x && $0.y == marble.y}
            let maxValue = filterValue.max(by: {$0.w < $1.w})!
            newMarbles.append((marble.x, marble.y, maxValue.d, filterValue.reduce(0) { $0 + $1.w }))
            
            visited[marble.x][marble.y] = true
        }
    }
    
    marbles = newMarbles
}

print(marbles.count, marbles.max(by: {$0.w < $1.w})?.w ?? 0)