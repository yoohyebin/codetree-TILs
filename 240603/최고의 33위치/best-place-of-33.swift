let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n-2 {
    var cnt = 0
    for j in i..<i+3 {
        for k in i..<i+3 {
            if arr[j][k] == 1 {
                cnt += 1
            }
        }
    }
    result = max(result, cnt)
}
print(result)