let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]

let nt = readLine()!.split(separator: " ").map{Int(String($0))!}
let input = readLine()!.split(separator: " ").map{String($0)}
var (n,t,r,c,d) = (nt[0], nt[1], Int(input[0])!, Int(input[1])!, input[2])
var (x,y) = (0,0)

if d == "R" {
    (x,y) = (dx[0], dy[0])
} else if d == "L" {
    (x,y) = (dx[1], dy[1])
} else if d == "D" {
    (x,y) = (dx[2], dy[2])
} else {
    (x,y) = (dx[4], dy[4])
}

for _ in 0..<t {
    let (nx, ny) = (c+x, r+y)
    
    if nx>=1, nx<=n, ny>=1, ny<=n {
        c = nx
        r = ny
    } else {
        x *= -1
        y *= -1
    }
}

print(r, c)