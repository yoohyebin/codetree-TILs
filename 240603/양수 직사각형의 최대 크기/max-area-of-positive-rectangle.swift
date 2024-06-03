let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = [[Int]]()
var result = -1

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    for x in x1...x2 {
        for y in y1...y2 {
            if arr[x][y] < 0 {
                return -1
            }
        }
    }
    
    return (x2-x1+1) * (y2-y1+1)
}

for i in 0..<n-1 {
    for j in 0..<m-1 {
        for k in i+1..<n {
            for l in j+1..<m {
                result = max(result, solution(i, j, k ,l))
            }
        }
    }
}

print(result)