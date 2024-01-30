let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

let input = readLine()!.map{String($0)}
var (x, y) = (0, 0)
var result = -1, cnt = 0
var index = 0

for s in input {
    cnt += 1
    
    if s == "F" {
        (x,y) = (x+dx[index], y+dy[index])
    } else if s == "L" {
        index = (3+index)%4
    } else {
        index = (index+1)%4
    }
    
    if x == 0, y == 0 {
        result = cnt
        break
    }
}

print(result)