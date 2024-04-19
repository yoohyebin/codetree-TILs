let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0],nk[1])
var arr = [Int]()
var result = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for i in 0..<n-1 {
    for j in i+1..<n {
        if arr[j] - arr[i] > k {
            result = max(result, j-i)
            break
        }
    }
}

print(result)