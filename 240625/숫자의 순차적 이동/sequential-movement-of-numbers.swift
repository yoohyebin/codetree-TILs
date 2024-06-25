let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])

var arr = [[Int]]()
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var (x,y) = (0,0)
let dx = [-1, -1, -1, 0, 0, 1, 1, 1], dy = [-1, 0, 1, -1, 1, -1, 0 ,1]

func findIndex(_ num: Int) {
    for i in 0..<n {
        if arr[i].contains(num) {
            x = i
            y = arr[i].firstIndex(of: num)!
            return
        }
    }
}

for _ in 0..<m {
    for num in 1...n*n {
        findIndex(num)
        
        var (mx, my) = (0, 0)
        var max = 0
        
        for i in 0..<8 {
            let (nx, ny) = (x+dx[i], y+dy[i])
            
            if nx >= 0, nx < n, ny >= 0, ny < n, arr[nx][ny] > max {
                max = arr[nx][ny]
                (mx, my) = (nx, ny)
            }
        }
        
        let temp = arr[mx][my]
        arr[mx][my] = arr[x][y]
        arr[x][y] = temp
    }
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}