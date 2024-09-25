let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1001)
dp[0] = 1
dp[1] = 1

if n >= 2 {
    for i in 2...n {
        dp[i] = (dp[i-2]*2 + dp[i-1])%10007
    }
}

print(dp[n])