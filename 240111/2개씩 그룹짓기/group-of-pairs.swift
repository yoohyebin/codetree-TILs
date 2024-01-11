let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var maxValue = 0

for i in 0..<n/2 {
    maxValue = max(maxValue, arr[i]+arr[2*n-1-i])
}

print(maxValue)