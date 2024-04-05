let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1...4 {
    var score = 0
    var yabawi = Array(repeating: false, count: 4)
    yabawi[i] = true
    
    for a in arr {
        yabawi.swapAt(a[0], a[1])
        score += yabawi[a[2]] ? 1 : 0
    }
    
    result = max(result, score)
}

print(result)