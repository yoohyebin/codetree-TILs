let n = Int(readLine()!)!
var arr = readLine()!.map{Int(String($0))!}
var result = 0

func betweenDist() -> Int{
    var dist = n
    
    for i in 0..<n {
        for j in i+1..<n {
            if arr[i] == 1 && arr[j] == 1 {
                dist = min(dist, j-i)
            }
        }
    }
    
    return dist
}

for i in 0..<n {
    if arr[i] == 0 {
        for j in i+1..<n {
            if arr[j] == 0 {
                arr[i] = 1
                arr[j] = 1
                
                result = max(result, betweenDist())
                
                arr[i] = 0
                arr[j] = 0
            }
        }
    }
}

print(result)