let dx = [1, 0, -1, 0]
let dy = [0, -1, 0, 1]

let n = Int(readLine()!)!
var arr = [[String]]()

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

let k = Int(readLine()!)!

var index = (k-1)/n
var (x,y) = (0,0)

switch index {
case 0:
    y = (k-1)
case 1:
    x = (k-n-1)
    y = n-1
case 2:
    x = n-1
    y = n-(k-2*n)
default:
    x = n-(k-3*n)
}

var result = 0
while x>=0, x<n, y>=0, y<n {
    if index == 0 {
        index = arr[x][y] == "/" ? 1 : 3
    } else if index == 1 {
        index = arr[x][y] == "/" ? 0 : 2
    } else if index == 2 {
        index = arr[x][y] == "/" ? 3 : 1
    } else if index == 3 {
        index = arr[x][y] == "/" ? 2 : 0
    }
    x += dx[index]
    y += dy[index]
    result += 1
}

print(result)