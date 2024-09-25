let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: -1, count: n)

dp[0] = 0

for i in 1...n {
    for j in 0..<i {
        if dp[j] == -1 {
            continue
        }
        
        if j+arr[i] >= i {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max() ?? 0)