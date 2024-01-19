var arr = Array(repeating: Array(repeating: 0, count: 201), count: 201)
let n = Int(readLine()!)!
var sum = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    
    sum += (x2-x1)*(y2-y1)
    
    for i in x1...x2 {
        for j in y1...y2 {
            arr[i+100][j+100] += 1
        }
    }
}

var doubleWidth = 0
for i in 0..<arr.count {
    doubleWidth += arr[i].filter{$0 >= 2}.count
}

print(sum-doubleWidth+5)