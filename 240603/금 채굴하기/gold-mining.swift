let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for r in 0..<n {
    for c in 0..<n {
        for k in 0...2*(n-1) {
            let kValue = k*k + (k+1)*(k+1)
            var maxValue = 0
            
            for i in 0..<n {
                for j in 0..<n {
                    if abs(r-i) + abs(c-j) <= k {
                        maxValue += arr[i][j]
                    }
                }
            }
            
            if maxValue*m >= kValue {
                result = max(result, maxValue)
            }
        }
    }
}

print(result)