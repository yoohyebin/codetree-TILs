let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (nk[0], nk[1])
var result = 0
var dict = [Int: Int]()
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for e in arr {
    dict[e, default: 0] += 1
}

for i in 0..<n {
    dict[arr[i], default: 1] -= 1
    
    for j in 0..<i {
        let diff = k - arr[i] - arr[j]
        
        if let value = dict[diff] {
            result += value
        }
    }
}

print(result)