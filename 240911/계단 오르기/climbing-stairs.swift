let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1001)
dp[0] = 1
dp[2] = 1
dp[3] = 1

if n >= 4 {
    for i in 4...n {
        dp[i] = (dp[i-2] + dp[i-3])%10007
    }
}

print(dp[n])