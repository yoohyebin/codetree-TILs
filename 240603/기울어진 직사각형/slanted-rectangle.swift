let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0

let dx = [-1, -1, 1, 1]
let dy = [1, -1, -1, 1]

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}


func solution(_ r: Int, _ c: Int, _ move: [Int]) -> Int {
    var sum = 0
    var nr = r, nc = c
    
    for i in 0..<4 {
        for _ in 0..<move[i] {
            if nr+dx[i] >= 0, nr+dx[i] < n, nc+dy[i] >= 0, nc+dy[i] < n {
                nr += dx[i]
                nc += dy[i]
                sum += arr[nr][nc]
            } else {
                return 0
            }
        }
    }
    
    return sum
}

for i in 0..<n {
    for j in 0..<n {
        for k in 1..<n {
            for l in 1..<n {
                result = max(result, solution(i, j, [k,l,k,l]))
            }
        }
    }
}

print(result)