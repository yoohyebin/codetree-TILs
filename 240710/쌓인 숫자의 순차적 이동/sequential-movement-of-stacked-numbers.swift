let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = Array(repeating: Array(repeating: [0], count: n), count: n)

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in 0..<n {
        arr[i][j][0] = input[j]
    }
}

let moveNums = readLine()!.split(separator: " ").map{Int(String($0))!}
let dx = [-1, -1, -1, 0, 0, 1, 1, 1]
let dy = [-1, 0, 1, -1, 1, -1, 0, 1]

func get_pos(_ move: Int) -> (Int, Int, Int) {
    for i in 0..<n {
        for j in 0..<n {
            for k in  0..<arr[i][j].count {
                if arr[i][j][k] == move {
                    return (i, j, k)
                }
            }
        }
    }
    return (-1, -1, -1)
}

for move in moveNums {
    let (x,y,z) = get_pos(move)
    
    var maxValue = 0
    var maxPos = (-1, -1)
    for i in 0..<8 {
        let nx = x+dx[i]
        let ny = y+dy[i]
        if nx>=0, nx<n, ny>=0, ny<n {
            if maxValue < (arr[nx][ny].max() ?? 0) {
                maxValue = arr[nx][ny].max()!
                maxPos = (nx, ny)
            }
        }
    }
    
    if maxPos != (-1, -1) {
        let temp = arr[x][y][z..<arr[x][y].count]
        arr[x][y] = Array(arr[x][y][0..<z])
        
        arr[maxPos.0][maxPos.1] += temp
    }
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j].count == 0 {
            print("None")
        } else {
            print(arr[i][j].reversed().map{String($0)}.joined(separator: " "))
        }
    }
}