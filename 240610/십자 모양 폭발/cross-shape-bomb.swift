let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let input = readLine()!.split(separator: " ").map{Int(String($0))! - 1}
let (x,y) = (input[0], input[1])
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

if arr[x][y] > 1 {
    for i in 0..<4 {
        for j in 1..<arr[x][y] {
            let (nx, ny) = (x+(dx[i]*j), y+(dy[i]*j))
            
            if nx>=0, nx<n, ny>=0, ny<n {
                arr[nx][ny] = 0
            }
        }
    }
}
arr[x][y] = 0

for i in 0..<n {
    for j in stride(from: n-1, to: 0, by: -1) {
        if arr[j][i] == 0 {
            arr[j][i] = arr[j-1][i]
            arr[j-1][i] = 0
        }
    }
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}