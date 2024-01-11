let n = Int(readLine()!)!
var arr = [String]()

for i in 0..<n {
    arr.append(readLine()!)
}

print(arr.sorted().joined(separator: "\n"))