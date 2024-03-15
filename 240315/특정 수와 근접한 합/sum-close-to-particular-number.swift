let ns = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,s) = (ns[0], ns[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = Int.max

for i in 0..<n-1 {
    for j in i+1..<n {
        var sum = 0
        for k in 0..<n {
            if k != i && k != j {
                sum += arr[k]
            }
        }
        result = min(result, abs(s-sum))
    }
}

print(result)