let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0
var sum = Array(repeating: 0, count: n)
sum[0] = arr[0]

for i in 1..<n {
    sum[i] = sum[i-1] + arr[i]
}

for i in 0..<n-k {
    result = max(result, sum[i+k]-sum[i])
}

print(result)