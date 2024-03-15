let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n-2 {
        let cnt = arr[i][j]+arr[i][j+1]+arr[i][j+2]
        result = max(result, cnt)
    }
}

print(result)