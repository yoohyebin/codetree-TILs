let n = Int(readLine()!)!
var arr = [(a: Int, b: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

var sum = 0
for i in 0..<n {
    sum += (arr[i].b-arr[i].a)
}

for i in 0..<n {
    result = max(result, sum-(arr[i].b-arr[i].a))
}

print(result)