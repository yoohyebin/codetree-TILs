let n = Int(readLine()!)!
let dx = [1, 0]
let dy = [0, 1]
var arr = [[Int]]()
var result = Int.max

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution(_ x: Int, _ y: Int, _ maxValue: Int, _ minValue: Int){
    if x == n-1 && y == n-1 {
        result = min(abs(maxValue - minValue), result)
        return
    }
    
    for i in 0..<2 {
        let nx = dx[i] + x
        let ny = dy[i] + y
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            let maxVal = max(maxValue, arr[nx][ny])
            let minVal = min(minValue, arr[nx][ny])
            
            solution(nx, ny, maxVal, minVal)
        }
    }
}

solution(0, 0, 0, Int.max)
print(result)