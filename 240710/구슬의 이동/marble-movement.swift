let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,t,k) = (input[0], input[1], input[2], input[3])

var marbles = [(r: Int, c: Int, d: Int, v: Int)]()
let dx = [-1, 0, 1, 0], dy = [0, 1, 0 ,-1]
let dirMap = ["U": 0, "R": 1, "D": 2, "L": 3]

for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{String($0)}
    marbles.append((Int(data[0])!-1, Int(data[1])!-1, dirMap[data[2]]!, Int(data[3])!))
}

for _ in 0..<t {
    var arr = Array(repeating: Array(repeating: (0, [Int]()), count: n), count: n)
    
    for i in 0..<marbles.count {
        for _ in 0..<marbles[i].v {
            let nr = marbles[i].r+dx[marbles[i].d]
            let nc = marbles[i].c+dy[marbles[i].d]
            
            if nr<0 || nr>=n || nc<0 || nc>=n {
                marbles[i].d = (marbles[i].d+2)%4
            }  
            
            marbles[i].r += dx[marbles[i].d]
            marbles[i].c += dy[marbles[i].d]
        }
        
        arr[marbles[i].r][marbles[i].c].0 += 1
        arr[marbles[i].r][marbles[i].c].1.append(i)
    }
    
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j].0 > k {
                for l in 0..<arr[i][j].0-k {
                    marbles[arr[i][j].1[l]] = (0,0,0,0)
                }
            }
        }
    }
    
    marbles = marbles.filter{$0.v != 0}
}

print(marbles.count)