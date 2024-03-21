let n = Int(readLine()!)!
var arr = [(x1: Int, x2: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

arr.sort(by: {
    $0.x1 < $1.x1
})

var a = [Int]()
for i in 0..<n {
    var overlap = false

    for j in 0..<n {
        if i == j {
            continue
        }

        if (arr[i].x1 <= arr[j].x1 && arr[i].x2 >= arr[j].x2) || (arr[i].x1 >= arr[j].x1 && arr[i].x2 <= arr[j].x2) {
            overlap = true
            break
        }
    }
    result += overlap ? 0 : 1
}

print(result)