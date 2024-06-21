let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (n, r, c) = (input[0], input[1]-1, input[2]-1)
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
var result = [arr[r][c]]

while true {
    var flag = true
    
    for i in 0..<4 {
        let nx = r+dx[i], ny = c+dy[i]
        
        if nx >= 0, nx < n, ny >= 0, ny < n, arr[nx][ny] > arr[r][c] {
            result.append(arr[nx][ny])
            r = nx
            c = ny
            flag = false
            break
        }
    }
    
    if flag {
        break
    }
}


print(result.map{String($0)}.joined(separator: " "))