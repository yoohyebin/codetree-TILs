let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = Array(repeating: 0, count: 101)
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[input[1]] += input[0]
}

for i in 0...100 {
    var sum = 0

    for j in i-k...i+k {
        if j >= 0, j <= 100 {
            sum += arr[j]
        }
    }

    result = max(result, sum)
}

print(result)