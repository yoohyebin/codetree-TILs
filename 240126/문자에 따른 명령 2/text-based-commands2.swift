let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

let input = readLine()!.map{String($0)}
var dirction = (x: 0, y: 0)
var result = (x: 0, y: 0)
var i = 0

for s in input {
    if s == "R" {
        i += 1
        dirction.x = dx[i%4]
        dirction.x = dx[i%4]
    } else if s == "L" {
        if i <= 0 {
            i = 4
        }
        i -= 1
        
        dirction.x = dx[i%4]
        dirction.x = dx[i%4]
        
    } else {
        result.x += dirction.x
        result.y += dirction.y
    }
}

print(result.x, result.y