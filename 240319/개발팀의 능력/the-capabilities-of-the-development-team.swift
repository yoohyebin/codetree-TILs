let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let sum = arr.reduce(0, +)
var result = -1

for i in 0..<4 {
    for j in i+1..<5 {
        for k in 0..<5 {
            if k != i && k != j {
                let s1 = arr[i] + arr[j]
                let s2 = sum - s1 - arr[k]
                
                if arr[k] == s1 || arr[k] == s2 || s1 == s2 {
                    continue
                }
                
                let diff = max(abs(arr[k]-s1), abs(arr[k]-s2), abs(s2-s1))
                
                result = result == -1 ? diff  : min(result, diff)
            }
        }
    }
}

print(result)