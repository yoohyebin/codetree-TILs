var dp = Array(repeating: 0, count: 20)

func numOfBST(_ n: Int) -> Int {
    var numOfBst = 0
    
    for i in 0..<n {
        numOfBst += dp[i]*dp[n-i-1]
    }
    return numOfBst
}

let n = Int(readLine()!)!
dp[0] = 1
dp[1] = 1

if n >= 2 {
    for i in 2...n {
        dp[i] = numOfBST(i)
    }
}

print(dp[n])