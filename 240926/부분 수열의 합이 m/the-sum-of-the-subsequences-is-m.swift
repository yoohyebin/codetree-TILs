let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 101, count: m+1)
dp[0] = 0

for i in 0..<n {
    for j in stride(from: m, through: 0, by: -1) {
        if j >= arr[i] {
            dp[j] = min(dp[j], dp[j-arr[i]]+1)
        }
    }
}
print(dp[m] == 101 ? -1 : dp[m])