let n = Int(readLine()!)!
var dict = [String: Int]()

for _ in 0..<n {
    let input = readLine()!
    
    dict[input, default: 0] += 1
}

let sorted = dict.sorted(by: {$0.key < $1.key})

for (key, value) in sorted {
    let result = (Double(value)/Double(n))*100
    print("\(key) \(String(format: "%.4f", result))")
}