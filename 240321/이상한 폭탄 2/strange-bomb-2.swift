let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = Array(repeating: [Int](), count: 1001)
var result = -1

for i in 0..<n {
    arr[Int(readLine()!)!].append(i)
}

for b in 0..<1001 {
    if arr[b].isEmpty {
        continue
    }
    
    for idx in 0..<arr[b].count-1 {
        if arr[b][idx+1] - arr[b][idx] <= k {
            result = b
        }
    }
}

print(result)