let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m, k) = (input[0], input[1], input[2]-1)
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n-1 {
    if arr[i+1][k..<k+m].contains(1) {
        arr[i] = arr[i][0..<k] + Array(repeating: 1, count: m) + arr[i][k+m..<n]
        break
    }
}

if n == 1 {
    print(1)
} else {
    for i in 0..<n {
        print(arr[i].map{String($0)}.joined(separator: " "))
    }
}