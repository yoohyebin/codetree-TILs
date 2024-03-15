let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n-2 {
        let cnt = arr[i][j..<j+3].filter{$0 == 1}.count
        result = max(result, cnt)
    }
}

print(result)