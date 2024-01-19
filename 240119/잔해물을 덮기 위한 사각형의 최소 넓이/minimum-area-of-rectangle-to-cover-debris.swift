var arr = Array(repeating: Array(repeating: 0, count: 2001), count: 2001)

for n in 0..<2 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    
    for i in x1..<x2 {
        for j in y1..<y2 {
            arr[j+1000][i+1000] = n+1
        }
    }
}

var x1 = Int.max, x2 = 0 ,y = 0
for i in 0..<arr.count {
    let n = arr[i].filter{$0 == 1}.count
    
    if n != 0 {
        if x1 == Int.max {
            x1 = i
        }
        x2 = max(x2, i)
        y = max(y, n)
    }
    
}

print((x2-x1+1)*y)