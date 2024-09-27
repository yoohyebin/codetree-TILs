let n = Int(readLine()!)!
var dict = [Int: Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    if let val = dict[input[0]] {
        dict[input[0]] = min(val, input[1])
    } else {
        dict[input[0]] = input[1]
    }
}

print(dict.values.reduce(0, +))