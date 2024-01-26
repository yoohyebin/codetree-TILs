let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]

let n = Int(readLine()!)!
var x = 0, y = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "E":
        x += dx[0]*Int(input[1])!
        y += dy[0]*Int(input[1])!
    case "W":
        x += dx[1]*Int(input[1])!
        y += dy[1]*Int(input[1])!
    case "S":
        x += dx[2]*Int(input[1])!
        y += dy[2]*Int(input[1])!
    case "N":
        x += dx[3]*Int(input[1])!
        y += dy[3]*Int(input[1])!
    default:
        break
    }
}

print(x, y)