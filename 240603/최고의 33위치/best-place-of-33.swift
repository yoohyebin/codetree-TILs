let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution(_ row: Int, _ col: Int) -> Int {
    var num = 0
    
    for r in row..<row+3 {
        for c in col..<col+3 {
            num += arr[r][c]
        }
    }
    
    return num
}

for r in 0..<n-2 {
    for c in 0..<n-2 {
        result = max(result, solution(r,c))
    }
}

print(result)