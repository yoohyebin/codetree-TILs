let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = -Int.max

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func overlapped(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ x3: Int, _ y3: Int, _ x4: Int, _ y4: Int) -> Bool {
    var board = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for i in x1...x2 {
        for j in y1...y2 {
            board[i][j] += 1
        }
    }
    
    for i in x3...x4 {
        for j in y3...y4 {
            board[i][j] += 1
        }
    }
    
    for i in 0..<n {
        if board[i].max() ?? 0 >= 2 {
            return true
        }
    }
    
    return false
}

func calculateSum(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    var sum = 0
    
    for x in x1...x2 {
        for y in y1...y2 {
            sum += arr[x][y]
        }
    }
    
    return sum
}

func solution(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    var maxSum = -Int.max
    
    for i in 0..<n {
        for j in 0..<m {
            for k in i..<n {
                for l in j..<m {
                    if !overlapped(x1, y1, x2, y2, i, j, k, l) {
                        maxSum = max(maxSum,
                                     calculateSum(x1, y1, x2, y2) + calculateSum(i, j, k, l)
                        )
                    }
                }
            }
        }
    }
    
    return maxSum
}

for i in 0..<n {
    for j in 0..<m {
        for k in i..<n {
            for l in j..<m {
                result = max(result, solution(i, j, k, l))
            }
        }
    }
}

print(result)