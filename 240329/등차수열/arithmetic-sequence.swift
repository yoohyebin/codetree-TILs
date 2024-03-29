let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var result = 0

for i in 0..<arr.max()! {
    var cnt = 0
    for j in 0..<n-1 {
        for k in j+1..<n {
            if abs(i-arr[j]) == abs(i-arr[k]) {
                cnt += 1
            }
        }
    }
    
    result = max(result, cnt)
}

print(result)