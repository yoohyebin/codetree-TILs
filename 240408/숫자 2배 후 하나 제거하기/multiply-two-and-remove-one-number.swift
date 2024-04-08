let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = Int.max

for i in 0..<n {
    arr[i] *= 2
    
    for j in 0..<n {
        var cnt = 0
        var prev = -1
        
        for k in 0..<n {
            if k == j {continue}
            
            if prev != -1 {
                cnt += abs(arr[k] - prev)
            }
            
            prev = arr[k]
        }
        
        result = min(result, cnt)
    }
    
    arr[i] /= 2
}

print(result)