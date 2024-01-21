let n = Int(readLine()!)!
var prev = 0
var cnt = 1, result = 0

for i in 0..<n {
    let a = Int(readLine()!)!
    
    if i>=1 && prev < a {
        cnt += 1
    } else {
        result = max(cnt, result)
        cnt = 1
    }
    prev = a
}

print(max(result, cnt))