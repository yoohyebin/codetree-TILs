let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

dp[0][n-1] = arr[0][n-1]

for i in stride(from: n-2, through: 0, by: -1) {
    dp[0][i] = arr[0][i] + dp[0][i+1]
}


for i in 1..<n {
    dp[i][n-1] = dp[i-1][n-1] + arr[i][n-1]
    
    for j in stride(from: n-2, through: 0, by: -1) {
        dp[i][j] = min(dp[i-1][j], dp[i][j+1]) + arr[i][j]
    }
}

print(dp[n-1][0])