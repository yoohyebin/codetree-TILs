import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var pos = [[Int]]()
var selected = [[Int]]()
var result = Int.max

for _ in 0..<n {
    pos.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func cal() -> Int {
    var max_dist = 0
    
    for i in 0..<m-1 {
        let dist = (selected[i][0]-selected[i+1][0])*(selected[i][0]-selected[i+1][0]) + (selected[i][1]-selected[i+1][1])*(selected[i][1]-selected[i+1][1])
        max_dist = max(max_dist, dist)
    }
    
    return max_dist
}

func solution(_ idx: Int, _ cnt: Int) {
    if cnt == m {
        result = min(result, cal())
        return
    }
    
    if idx == n {
        return
    }
    
    selected.append(pos[idx])
    solution(idx+1, cnt+1)
    selected.removeLast()
    
    solution(idx+1, cnt)
}

solution(0, 0)
print(result)