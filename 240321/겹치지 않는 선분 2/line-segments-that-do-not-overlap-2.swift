let n = Int(readLine()!)!
var arr = [(x1: Int, x2: Int)]()
var result = n

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

arr.sort(by: {
    $0.x1 < $1.x1
})

for i in 0..<n-1 {
    for j in i+1..<n {
        if arr[j].x1 >= arr[i].x1 && arr[j].x1 < arr[i].x2 {
            result -= 1
            break
        }
    }
}

print(result)