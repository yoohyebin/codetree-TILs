let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 101)
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    arr[Int(input[0])!] = input[1] == "G" ? 1 : -1
}

for i in 0..<100 {
    if arr[i] != 0 {
        for j in i+1...100 {
            if arr[j] != 0 {
                let cal = arr[i...j].reduce(0, +)
                
                if abs(cal) == j || cal == 0 {
                    result = max(result, j-i)
                }
            }
        }
    }
}

print(result)