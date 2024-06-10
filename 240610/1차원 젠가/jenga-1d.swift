let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

while let input = readLine() {
    let inputValue = input.split(separator: " ").map{Int(String($0))! - 1}
    arr.removeSubrange(inputValue[0]...inputValue[1])
}

print(arr.count)
print(arr.map{String($0)}.joined(separator: "\n"))