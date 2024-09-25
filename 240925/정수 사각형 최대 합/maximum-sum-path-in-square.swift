let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

dp[0][0] = arr[0][0]

for i in 1..<n {
    dp[0][i] = arr[0][i] + dp[0][i-1]
}

for i in 1..<n {
    dp[i][0] = dp[i-1][0] + arr[i][0]
    
    for j in 1..<n {
        dp[i][j] = max(dp[i-1][j], dp[i][j-1]) + arr[i][j]
    }
}


print(dp[n-1][n-1])