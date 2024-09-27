let n = Int(readLine()!)!
var dict = [String: Int]()

for _ in 0..<n {
    let input = String(readLine()!.sorted())
    
    dict[input, default: 0] += 1
}

print(dict.values.max() ?? 0)