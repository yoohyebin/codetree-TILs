var arr = Array(repeating: (black: 0, white: 0, color: ""), count: 200001)
let n = Int(readLine()!)!
var current = 0

for _ in  0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[1] == "R" {
        for i in current..<current+Int(input[0])! {
            arr[i+100000].black += 1
            arr[i+100000].color = "black"
        }
        current += Int(input[0])!-1
    } else {
        for i in current-Int(input[0])!+1...current {
            arr[i+100000].white += 1
            arr[i+100000].color = "white"
        }
        current -= (Int(input[0])!-1)
    }
}

var white = 0, black = 0, gray = 0
for i in 0..<200001 {
    if arr[i].white >= 2, arr[i].black >= 2 {
        gray += 1
    } else if arr[i].color == "white" {
        white += 1
    } else if arr[i].color == "black" {
        black += 1
    }
}

print(white, black, gray)