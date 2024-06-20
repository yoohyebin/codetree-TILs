let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])

var arr = [[Int]]()
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var bombs = [Int]()
for _ in 0..<m {
    bombs.append(Int(readLine()!)! - 1)
}

let dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1]

for bomb in bombs {
    var row = 0
    
    while row < n {
        if arr[row][bomb] != 0 {
            break
        }
        row += 1
    }
    
    if row == n {continue}
    
    let value = arr[row][bomb]
    
    for i in 1..<value {
        for (x, y) in zip(dx, dy) {
            let nx = row + x*i, ny = bomb + y*i
            
            if nx >= 0, nx < n, ny >= 0, ny < n {
                arr[nx][ny] = 0
            }
        }
    }
    
    arr[row][bomb] = 0
    
    for l in 0..<n {
        for i in stride(from: n-1, to: 0, by: -1) {
            if arr[i][l] == 0 {
                for j in stride(from: i-1, through: 0, by: -1) {
                    if arr[j][l] != 0 {
                        arr[i][l] = arr[j][l]
                        arr[j][l] = 0
                        break
                    }
                }
            }
        }
    }
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}