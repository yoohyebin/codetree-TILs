let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: n)

for i in 0..<n {
    dp[i] = 1

    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

var result = 0
for i in 0..<n {
    result = max(result, dp[i])
}
print(result)