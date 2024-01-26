let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]

let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n {
        var cnt = 0
        
        for k in 0..<4 {
            let (x,y) = (i+dx[k], j+dy[k])
            if x>=0, x<n, y>=0, y<n, arr[x][y] == 1 {
                cnt += 1
            }
        }
        
        if cnt >= 3 {
            result += 1
        }
    }
}

print(result)