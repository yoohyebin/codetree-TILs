let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (input[0], input[1])
var arr = Array(repeating: 0, count: n+1)

for _ in 0..<k {
    let ab = readLine()!.split(separator: " ").map{Int(String($0))!}
    for i in ab[0]...ab[1] {
        arr[i] += 1
    }
}

print(arr.max() ?? 0)