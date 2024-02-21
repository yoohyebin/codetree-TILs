let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var answer = Int.max

for i in 0..<n {
    var re = 0
    
    for j in 0..<n {
        re += arr[j]*abs(i-j)
    }
    
    answer = min(re, answer)
}

print(answer)