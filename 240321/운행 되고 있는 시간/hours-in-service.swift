let n = Int(readLine()!)!
var arr = [(a: Int, b: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for i in 0..<n {
    var set = Set<Int>()
    
    for j in 0..<n {
        if i == j {
            continue
        }
        
        for k in arr[j].a..<arr[j].b {
            set.insert(k)
        }
    }
    
    result = max(result, set.count)
}

print(result)