let n = Int(readLine()!)!
var arr = [[Int]]()
var result = 0
var selected =  [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func isPossible() -> Bool {
    for i in 0..<selected.count-1 {
        for j in i+1..<selected.count {
            let (ax1, ax2) = (selected[i][0], selected[i][1])
            let (bx1, bx2) = (selected[j][0], selected[j][1])
            
            if (ax1<=bx1 && bx1<=ax2) || (ax1<=bx2 && bx2<=ax2) || (bx1<=ax1 && ax1<=bx2) || (bx1<=ax2 && ax2<=bx2) {
                return false
            }
        }
    }
    return true
}

func solution(_ cnt: Int) {
    if cnt == n {
        if !selected.isEmpty && isPossible() {
            result = max(result, selected.count)
        }
        return
    }
    
    selected.append(arr[cnt])
    solution(cnt+1)
    selected.removeLast()
    
    solution(cnt+1)
}

solution(0)
print(result)