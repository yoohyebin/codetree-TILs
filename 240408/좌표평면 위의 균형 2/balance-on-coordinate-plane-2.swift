let n = Int(readLine()!)!
var arr = [(x: Int, y: Int)]()
var result = Int.max

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

for x in stride(from: 2, through: 100, by: 2) {
    for y in stride(from: 2, through: 100, by: 2)  {
        var (n1, n2, n3, n4) = (0,0,0,0)
        
        n1 = arr.filter{$0.x > x && $0.y > y}.count
        n2 = arr.filter{$0.x < x && $0.y > y}.count
        n3 = arr.filter{$0.x < x && $0.y < y}.count
        n4 = arr.filter{$0.x > x && $0.y < y}.count
        
        result = min(result, max(n1,n2,n3,n4))
    }
}

print(result)