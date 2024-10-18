let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = [[Int]]()
var result = 0
var sumArr = Array(repeating: Array(repeating: 0, count: n), count: n)

func getSum(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
    var sum = 0
    
    for i in x1...x2 {
        if y1 == 0 {
            sum += sumArr[i][y2]
        } else {
            sum += sumArr[i][y2] - sumArr[i][y1-1]
        }
    }
    return sum
}

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    sumArr[i][0] = arr[i][0]
    for j in 1..<n {
        sumArr[i][j] = sumArr[i][j-1] + arr[i][j]
    }
}

for i in 0...n-k {
    for j in 0...n-k {
        result = max(result, getSum(i, j, i+k-1, j+k-1))
    }
}

print(result)