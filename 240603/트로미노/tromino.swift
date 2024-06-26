let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<m {
        var maxValue = 0
        
        if j+2 < m {
            maxValue = max(maxValue, arr[i][j..<j+3].reduce(0, +))
        }
        
        if i+2 < n {
            maxValue = max(maxValue, arr[i][j]+arr[i+1][j]+arr[i+2][j])
        }
        
        if i+1 < n, j+1 < m {
            maxValue = max(maxValue, arr[i][j]+arr[i+1][j]+arr[i+1][j+1])
            maxValue = max(maxValue, arr[i][j+1]+arr[i+1][j]+arr[i+1][j+1])
            maxValue = max(maxValue, arr[i][j]+arr[i][j+1]+arr[i+1][j])
            maxValue = max(maxValue, arr[i][j]+arr[i][j+1]+arr[i+1][j+1])
        }
        
        result = max(result, maxValue)
    }
}

print(result)