let n = Int(readLine()!)!
var arr = [(x: Int, y: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for i in 0...10 {
    for j in 0...10 {
        for k in 0...10 {
            var success = true
            for (x,y) in arr {
                if x == i || x == j || x == k {
                    continue
                }
                success = false
            }
            
            result = success ? 1 : 0
            
            success = true
            for (x,y) in arr {
                if x == i || x == j || y == k {
                    continue
                }
                success = false
            }
            
            result = success ? 1 : 0
            
            success = true
            for (x,y) in arr {
                if x == i || y == j || y == k {
                    continue
                }
                success = false
            }
            
            result = success ? 1 : 0
            
            success = true
            for (x,y) in arr {
                if y == i || y == j || y == k {
                    continue
                }
                success = false
            }
            
            result = success ? 1 : 0
        }
    }
}

print(result)