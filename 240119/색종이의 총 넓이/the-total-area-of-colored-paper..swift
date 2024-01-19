var arr = Array(repeating: Array(repeating: 0, count: 201), count: 201)
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1) = (input[0], input[1])
    
    for i in x1..<x1+8 {
        for j in y1..<y1+8 {
            arr[i+100][j+100] = 1
        }
    }
}


var result = 0
for i in 0..<arr.count {
    result += arr[i].filter{$0 == 1}.count
}

print(result)