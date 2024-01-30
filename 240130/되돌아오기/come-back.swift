let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

let n = Int(readLine()!)!
var (x, y) = (0, 0)
var result = -1
var s = 0
var index = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    let (d, k) = (input[0], Int(input[1])!)
    
    if d == "E" {
        index = 0
    } else if d == "W" {
        index = 1
    } else if d == "N" {
        index = 2
    } else {
        index = 3
    }
    
    for _ in 0..<k {
        (x,y) = (x+dx[index], y+dy[index])
        s += 1
        
        if result == -1, x == 0, y == 0 {
            result = s
        }
    }
}