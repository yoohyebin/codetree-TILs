var arr = Array(repeating: 0, count: 2001)
let n = Int(readLine()!)!
var current = 0

for _ in  0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[1] == "R" {
        for i in current..<current+Int(input[0])! {
            arr[i+1000] += 1
        }
        current += Int(input[0])!
    } else {
        for i in current-Int(input[0])!..<current {
            arr[i+1000] += 1
        }
        current -= Int(input[0])!
    }
}

print(arr.filter{$0 >= 2}.count)