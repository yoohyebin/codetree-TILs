let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m, k) = (nmk[0], nmk[1], nmk[2])

var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func down() {
    var next = Array(repeating: Array(repeating: 0, count: n), count: n)

    for j in 0..<n {
        var next_row = n-1
        
        for i in stride(from: n-1, through: 0, by: -1) {
            if arr[i][j] != 0 {
                next[next_row][j] = arr[i][j]
                next_row -= 1
            }
        }
    }
    
    arr = next
}

func bomb() {
    for j in 0..<n {
        var prev = arr[0][j], firstIndex = 0, cnt = 1
        
        for i in 1..<n {
            if prev == arr[i][j] {
                cnt += 1
            } else {
                if cnt >= m {
                    for k in firstIndex..<i {
                        arr[k][j] = 0
                    }
                }
                
                firstIndex = i
                prev = arr[i][j]
                cnt = 1
            }
        }
        
        if cnt >= m {
            for k in firstIndex..<n {
                arr[k][j] = 0
            }
        }
    }
    
    down()
}

func rotate() {
    var next = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            next[i][j] = arr[n-j-1][i]
        }
    }
    
    arr = next
    
    down()
}


bomb()
for _ in 0..<k {
    rotate()
    bomb()
}

var result = 0

for i in 0..<n {
    result += arr[i].filter{$0 != 0}.count
}

print(result)