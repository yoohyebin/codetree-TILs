let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,c) = (input[0], input[1], input[2])
var board = [[Int]]()
var arr = [Int]()
var maxValue = 0
var bestValue = Array(repeating: Array(repeating: -1, count: n), count: n)

func isPossible(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Bool {
    if y1+m > n || y2+m > n {
        return false
    }
    
    if x1 != x2 {
        return true
    }
    
    if !(y1+m-1 < y2 || y2+m-1 < y1) {
        return false
    }
    
    return true
}

func findMaxSum(_ idx: Int, _ weight: Int, _ value: Int) {
    if idx == m {
        if weight <= c {
            maxValue = max(maxValue, value)
        }
        return
    }
    
    findMaxSum(idx+1, weight, value)
    findMaxSum(idx+1, weight+arr[idx], value + arr[idx]*arr[idx])
}

func findMax(_ x: Int, _ y: Int) -> Int {
    if bestValue[x][y] != -1 {
        return bestValue[x][y]
    }
    
    arr = Array(board[x][y..<y+m])
    maxValue = 0
    findMaxSum(0, 0, 0)
    
    bestValue[x][y] = maxValue
    return maxValue
}

for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}


var result = 0
for x1 in 0..<n {
    for y1 in 0..<n {
        for x2 in 0..<n {
            for y2 in 0..<n {
                if isPossible(x1, y1, x2, y2) {
                    result = max(result, findMax(x1, y1) + findMax(x2, y2))
                }
            }
        }
    }
}
print(result)