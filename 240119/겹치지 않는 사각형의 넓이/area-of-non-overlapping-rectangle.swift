var arr = Array(repeating: Array(repeating: 0, count: 2001), count: 2001)

for _ in 0..<2 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    
    for i in x1..<x2 {
        for j in y1..<y2 {
            arr[i+1000][j+1000] = 1
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])

for i in x1..<x2 {
    for j in y1..<y2 {
        arr[i+1000][j+1000] = 0
    }
}

var result = 0
for i in 0..<arr.count {
    result += arr[i].filter{$0 == 1}.count
}

print(result)