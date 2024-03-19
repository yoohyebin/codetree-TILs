let n = Int(readLine()!)!
var arr = [(num: Int, cnt1: Int, cnt2: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1], input[2]))
}

for i in 1..<10 {
    for j in 1..<10 {
        for k in 1..<10 {
            if i == j || i == k || j == k {
                continue
            }
            
            var successed = true
            for (num, cnt1, cnt2) in arr {
                let(x, y, z) = (num/100, num/10%10, num%10)
                
                var (c1, c2) = (0,0)
                
                if x == i {c1 += 1}
                if y == j {c1 += 1}
                if z == k {c1 += 1}
                if x == j || x == k {c2 += 1}
                if y == i || y == k {c2 += 1}
                if z == i || z == j {c2 += 1}
                
                if c1 != cnt1 || c2 != cnt2 {
                    successed = false
                    break
                }
            }
            
            result += successed ? 1 :0
        }
    }
}

print(result)