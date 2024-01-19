var arr = Array(repeating: 0, count: 200001)
let n = Int(readLine()!)!
var current = 0

for _ in  0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[1] == "R" {
        for i in current..<current+Int(input[0])! {
            arr[i+100000] = 1
        }
        current += Int(input[0])!
    } else {
        for i in current-Int(input[0])!..<current {
            arr[i+100000] = 2
        }
        current -= Int(input[0])!
    }
}

var white = 0, black = 0

for a in arr {
    if a == 1 {
        black += 1
    } else if a == 2 {
        white += 1
    }
}

print(white, black)