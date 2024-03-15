let n = Int(readLine()!)!
var arr = [[Int]]()
var result = Int.max

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1..<n-1 {
    var distance = 0
    
    for j in 0..<n-1 {
        if j+1 == i {
            distance += abs(arr[j][0]-arr[j+2][0]) + abs(arr[j][1]-arr[j+2][1])
        } else if j != i {
            distance += abs(arr[j][0]-arr[j+1][0]) + abs(arr[j][1]-arr[j+1][1])
        }
    }
    
    result = min(result, distance)
}

print(result)