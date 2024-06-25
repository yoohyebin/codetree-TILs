let t = Int(readLine()!)!
var (n,m) = (0,0)
var result = [Int]()
let dx = [-1, 0, 0, 1], dy = [0 , 1, -1, 0]
let dirMap = [
    "U": 0,
    "R": 1,
    "L": 2,
    "D": 3
]

func move(_ x: Int, _ y: Int, _ d: Int) -> (x: Int, y: Int, d: Int) {
    let (nx, ny) = (x+dx[d], y+dy[d])
    
    if nx>=0, nx<n, ny>=0, ny<n {
        return (nx, ny, d)
    } else {
        return (x,y,3-d)
    }
}

for _ in 0..<t {
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
    (n,m) = (nm[0], nm[1])
    var marbles = [(x: Int, y: Int, d: Int)]()
    
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map{String($0)}
        marbles.append((x: Int(input[0])!-1, y: Int(input[1])!-1, d: dirMap[input[2]]!))
    }
    
    for _ in 0..<2*n {
        for (i, marble) in marbles.enumerated() {
            marbles[i] = move(marble.x, marble.y, marble.d)
        }
        
        var marble_cnt = Array(repeating: Array(repeating: 0, count: n), count: n)
        for marble in marbles {
            marble_cnt[marble.x][marble.y] += 1
        }
        
        var newMarbles = [(x: Int, y: Int, d: Int)]()
        for marble in marbles {
            if marble_cnt[marble.x][marble.y] == 1 {
                newMarbles.append((marble.x, marble.y, marble.d))
            }
        }
        
        marbles = newMarbles
    }
    
    result.append(marbles.count)
}

print(result.map{String($0)}.joined(separator: "\n"))