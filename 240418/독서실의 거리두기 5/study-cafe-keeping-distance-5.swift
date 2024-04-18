let n = Int(readLine()!)!
var arr = readLine()!.map{Int(String($0))!}
var result = 0

for i in 0..<n {
    if arr[i] == 0 {
        arr[i] = 1
        
        var dist = n
        for j in 0..<n {
            for k in j+1..<n {
                if arr[j] == 1 && arr[k] == 1 {
                    dist = min(dist, k-j)
                }
            }
        }
        result = max(result, dist)
        
        arr[i] = 0
    }
}

print(result)