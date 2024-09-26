let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: 0, count: n)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

dp[0] = arr[0][2]

for i in 1..<n {
    let end = arr[i][1]
    let start = arr[i][0]
    
    for j in 0..<i {
        if arr[j][1] >= start {
            dp[i] = max(arr[i][2], dp[i])
        } else {
            dp[i] = max(dp[i], dp[j] + arr[i][2])
        }
    }
}

print(dp.max() ?? 0)