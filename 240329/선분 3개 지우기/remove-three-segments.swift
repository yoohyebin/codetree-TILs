let n = Int(readLine()!)!
var arr = [(a: Int, b: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for i in 0..<n-2 {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            var temp = Array(repeating: 0, count: 101)
            
            for x in 0..<n {
                if x == i || x == j || x == k {
                    continue
                }
                for y in arr[x].a...arr[x].b {
                    temp[y] += 1
                }
            }
            
            if temp.filter{$0 > 1}.count == 0 {
                result += 1
            }
        }
    }
}

print(result)