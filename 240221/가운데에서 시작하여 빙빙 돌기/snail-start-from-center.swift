let dx = [0, -1, 0, 1]
let dy = [1, 0, -1, 0]

let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
var (x,y) = (n/2,n/2)
var dir = 0
var number = 2, addCnt = 1
arr[x][y] = 1

if n>1 {
OutLoop: while true {
        for _ in 0..<2 {
            for _ in 0..<addCnt {
                (x,y) = (x+dx[dir], y+dy[dir])
                arr[x][y] = number
                number += 1
                
                if number > n*n {break OutLoop}
            }
            dir = (dir+1)%4
        }
        addCnt += 1
    }
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}