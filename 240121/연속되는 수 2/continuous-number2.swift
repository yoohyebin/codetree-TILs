let n = Int(readLine()!)!
var prev = -1
var cnt = 1, result = 0

for _ in 0..<n {
    let a = Int(readLine()!)!
    if prev == a {
        cnt += 1
    } else {
        prev = a
        result = max(cnt, result)
        cnt = 1
    }
}

print(max(result, cnt))