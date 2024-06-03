let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    var max_cnt = 1
    var cnt = 1
    
    for j in 1..<n {
        if arr[i][j-1] == arr[i][j] {
            cnt += 1
        }
        
        max_cnt = max(max_cnt, cnt)
    }
    
    if max_cnt >= m {
        result += 1
    }
}

for i in 0..<n {
    var max_cnt = 1
    var cnt = 1
    
    for j in 1..<n {
        if arr[j-1][i] == arr[j][i] {
            cnt += 1
        }
        
        max_cnt = max(max_cnt, cnt)
    }
    
    if max_cnt >= m {
        result += 1
    }
}


print(result)