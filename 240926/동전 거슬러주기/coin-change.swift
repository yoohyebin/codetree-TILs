let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
let coins = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 10001, count: m+1)
dp[0] = 0

for i in 1...m {
    for j in 0..<n {
        if i >= coins[j] {
            dp[i] = min(dp[i], dp[i-coins[j]])
        }
    }
}

print(dp[m] == Int.max ? -1 : dp[m])