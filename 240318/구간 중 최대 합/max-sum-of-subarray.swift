let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0

for i in 0..<n-k {
    result = max(result, arr[i..<i+k].reduce(0,+))
}
print(result)