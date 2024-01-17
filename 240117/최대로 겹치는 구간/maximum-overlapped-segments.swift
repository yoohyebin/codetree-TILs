let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 201)
var starts = [Int](), ends = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    starts.append(input[0])
    ends.append(input[1])
    
    for i in input[0]...input[1] {
        arr[i+100] += 1
    }
}

for s in starts {
    if ends.contains(s) {
        arr[s+100] -= 1
    }
}

print(arr.max() ?? 0)