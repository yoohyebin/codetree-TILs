let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    var prev = arr[i][0]
    var maxCnt = 1
    
    for j in 1..<n {
        if prev == arr[i][j] {
            maxCnt += 1
        } else {
            prev = arr[i][j]
            maxCnt = 1
        }
    }
    
    if maxCnt >= m {
        result += 1
    }
    
    prev = arr[0][i]
    maxCnt = 1
    
    for j in 0..<n {
        if prev == arr[j][i] {
            maxCnt += 1
        } else {
            prev = arr[j][i]
            maxCnt = 1
        }
    }
    
    if maxCnt >= m {
        result += 1
    }
}

print(result)