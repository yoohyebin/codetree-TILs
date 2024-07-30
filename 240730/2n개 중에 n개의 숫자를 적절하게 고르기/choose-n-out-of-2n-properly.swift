let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var selected = [Int]()
var result = Int.max

func cal() -> Int {
    var sum = 0
    
    for i in 0..<2*n {
        if selected.contains(i) {
            sum += arr[i]
        } else {
            sum -= arr[i]
        }
    }
    
    return abs(sum)
}

func solution(_ cnt: Int, _ idx: Int) {
    if cnt == n {
        result = min(result, cal())
        return
    }
    
    if idx > n {
        return
    }
    
    selected.append(idx)
    solution(cnt+1, idx+1)
    selected.removeLast()
    
    solution(cnt, idx+1)
}

solution(0, 0)

print(result)