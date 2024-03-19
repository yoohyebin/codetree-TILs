let n = 6
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let sum = arr.reduce(0, +)

var result = Int.max

for i in 0..<n {
    for j in 0..<n {
        if j != i {
            for k in 0..<n {
                if k != i && k != j {
                    result = min(result, abs(sum-2*(arr[i]+arr[j]+arr[k])))
                }
            }
        }
    }
}

print(result)