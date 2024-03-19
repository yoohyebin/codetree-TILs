let n = Int(readLine()!)!
var arr = [(x: Int, y: Int)]()
var result = Int.max

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0],input[1]))
}

for i in 0..<n {
    var (maxX, maxY) = (0,0)
    var (minX, minY) = (Int.max,Int.max)
    
    for j in 0..<n {
        if i == j {
            continue
        }
        
        maxX = max(maxX, arr[j].x)
        maxY = max(maxY, arr[j].y)
        
        minX = min(minX, arr[j].x)
        minY = min(minY, arr[j].y)
    }
    
    result = min(result, (maxX-minX)*(maxY-minY))
}

print(result)