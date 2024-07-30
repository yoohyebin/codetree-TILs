let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
let inputs = readLine()!.split(separator: " ").map{Int(String($0))!}
var selected = [Int]()
var result = 0

func cal() -> Int{
    var re = selected[0]
    
    for i in 1..<m {
        re ^= selected[i]
    }
    
    return re
}

func solution(_ cnt: Int, _ idx: Int) {
    if idx == n {
        if cnt == m {
            result = max(result, cal())
        }
        return
    }
    
    selected.append(inputs[idx])
    solution(cnt+1, idx+1)
    selected.removeLast()
    
    solution(cnt, idx+1)
}

solution(0, 0)
print(result)