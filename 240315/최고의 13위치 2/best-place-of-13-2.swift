let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n-2 {
        for k in 0..<n{
            for l in 0..<n-2{
                if i == k && abs(j - l) <= 2 {
                    continue
                }
                
                var sum = arr[i][j] + arr[i][j+1] + arr[i][j+2]
                sum += arr[k][l] + arr[k][l+1] + arr[k][l+2]
                
                if sum > result {
                    result = max(result, sum)
                }
            }
        }
    }
}

print(result)