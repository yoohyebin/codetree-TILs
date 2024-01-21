let n = Int(readLine()!)!
var prev = 0
var cnt = 1, result = 0

for i in 0..<n {
    let a = Int(readLine()!)!
    
    if i == 0 {
        prev = a
    } else if a<0 && prev<0  || a>0 && prev>0{
        cnt += 1
        prev = a
    } else {
        result = max(cnt, result)
        cnt = 1
        prev = a
    }
}

print(max(result, cnt))