func solution() {
    let dxs = [1,1,1,0,-1,-1,-1,0]
    let dys = [-1,0,1,1,1,0,-1,-1]
    var arr = [[Int]]()
    
    for _ in 0..<19 {
        arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    }
    
    for i in 0..<19 {
        for j in 0..<19 {
            if arr[i][j] == 0 {continue}
            
            for idx in 0..<8 {
                var cnt = 1
                var x = i, y = j
                
                while true {
                    let nx = x+dxs[idx]
                    let ny = y+dys[idx]
                    
                    if nx<0 || nx>=19 || ny<0 || ny>=19 {break}
                    if arr[nx][ny] != arr[i][j] {break}
                    
                    cnt += 1
                    x = nx
                    y = ny
                    
                    if cnt == 5{
                        print(arr[i][j])
                        print(i+2*dxs[idx]+1, j+2*dys[idx]+1)
                        return
                    }
                }
            }
        }
    }
    print(0)
}

solution()