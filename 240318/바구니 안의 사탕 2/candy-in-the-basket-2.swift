let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = Array(repeating: 0, count: 101)
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[input[1]] += input[0]
}

for i in 0...100-(2*k) {
    result = max(result, arr[i...i+(2*k)].reduce(0, +))
}

print(result)