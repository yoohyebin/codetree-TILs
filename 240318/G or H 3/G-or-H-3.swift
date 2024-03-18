let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = Array(repeating: 0, count: 10001)
var result = 0

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map{String($0)}
    arr[Int(temp[0])!] = temp[1] == "G" ? 1 : 2
}

for i in 0..<10000-k {
    result = max(result, arr[i...i+k].reduce(0, +))
}

print(result)