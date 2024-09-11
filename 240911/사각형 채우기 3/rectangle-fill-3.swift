let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1001)
let mod = 1000000007
dp[0] = 1
dp[1] = 2

if n >= 2 {
    for i in 2...n {
        dp[i] = (dp[i-1]*2 + dp[i-2]*3) % mod
        
        for j in stride(from: i-3, through: 0, by: -1) {
            dp[i] = (dp[i] + dp[j]) % mod
        }
    }
}

print(dp[n])