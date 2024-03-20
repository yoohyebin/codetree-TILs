let n = Int(readLine()!)!
var arr = [(x: Int, y: Int)]()
var result = Int.max
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for i in 0..<n-1 {
    for j in i+1..<n {
        let (x1, y1) = (arr[i].x, arr[i].y)
        let (x2, y2) = (arr[j].x, arr[j].y)
        
        result = min(result, (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
    }
}

print(result)