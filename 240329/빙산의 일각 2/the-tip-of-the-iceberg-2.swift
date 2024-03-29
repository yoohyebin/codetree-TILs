let n = Int(readLine()!)!
var arr = [Int]()
var result = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for i in 1..<arr.max()! {
    var c = 0, cnt = 0
    
    for h in arr {
        if h-i > 0 {
            c += 1
        } else if c != 0 {
            c = 0
            cnt += 1
        }
    }
    
    cnt += c == 0 ? 0 : 1
    result = max(result, cnt)
}

print(result)