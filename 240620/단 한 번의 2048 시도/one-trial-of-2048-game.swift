var arr = [[Int]]()

for _ in 0..<4 {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let input = readLine()!
var dir = -1

switch input {
case "D":
    dir = 0
case "R":
    dir = 1
case "U":
    dir = 2
case "L":
    dir = 3
default:
    break
}

func rotate() {
    var next = Array(repeating: Array(repeating: 0, count: 4), count: 4)
    
    for i in 0..<4 {
        for j in 0..<4 {
            next[i][j] = arr[4-j-1][i]
        }
    }
    
    arr = next
}

func drop() {
    var next = Array(repeating: Array(repeating: 0, count: 4), count: 4)
    
    for j in 0..<4 {
        var keep = 0, next_row = 3
        
        for i in stride(from: 3, through: 0, by: -1) {
            if arr[i][j] == 0 {continue}
            
            if keep == 0 {
                keep = arr[i][j]
            } else if keep == arr[i][j] {
                next[next_row][j] = keep * 2
                keep = 0
                next_row -= 1
            } else {
                next[next_row][j] = keep
                keep = arr[i][j]
                next_row -= 1
            }
        }
        
        if keep != 0 {
            next[next_row][j] = keep
            next_row -= 1
        }
    }
    
    arr = next
}

for _ in 0..<dir {
    rotate()
}

drop()

for _ in 0..<4-dir {
    rotate()
}

for i in 0..<4 {
    print(arr[i].map{String($0)}.joined(separator: " "))
}