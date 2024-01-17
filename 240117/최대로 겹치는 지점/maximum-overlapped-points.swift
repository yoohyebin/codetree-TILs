let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 101)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    for i in input[0]...input[1] {
        arr[i] += 1
    }
}

print(arr.max() ?? 0)