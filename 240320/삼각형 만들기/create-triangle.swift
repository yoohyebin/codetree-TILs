let n = Int(readLine()!)!
var arr = [(x: Int, y: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for i in 0..<n-2 {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            let (x1,y1) = (arr[i].x, arr[i].y)
            let (x2,y2) = (arr[j].x, arr[j].y)
            let (x3,y3) = (arr[k].x, arr[k].y)
            
            result = max(result, abs((x1 * y2 + x2 * y3 + x3 * y1) - (x2 * y1 + x3 * y2 + x1 * y3)))
        }
    }
}

print(result)