let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = arr.reduce(0, +)
var result = Int.max

for i in 0..<6 {
    for j in 0..<6 {
        if i != j {
            for k in 0..<6 {
                if k != i && k != j {
                    for l in 0..<6 {
                        if l != i && l != j && l != k {
                            let s1 = arr[i] + arr[j]
                            let s2 = arr[k] + arr[l]
                            let s = sum - s1 - s2
                            
                            result = min(result, max(abs(s1-s2), abs(s1-s), abs(s2-s)))
                        }
                    }
                }
            }
        }
    }
}

print(result)