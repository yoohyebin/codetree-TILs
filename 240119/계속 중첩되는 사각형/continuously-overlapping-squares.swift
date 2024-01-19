var arr = Array(repeating: Array(repeating: 0, count: 201), count: 201)
let n = Int(readLine()!)!

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    
    for x in x1..<x2 {
        for y in y1..<y2 {
            arr[x+100][y+100] = i%2 + 1
        }
    }
}

var result = 0
for i in 0..<arr.count {
    result += arr[i].filter{$0 == 2}.count
}
print(result)