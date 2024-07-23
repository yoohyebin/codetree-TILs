let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = [(b: Int, a: Int)]()
var result = Int.max
var selectedLines = [(b: Int, a: Int)]()
var resultLines = Array(0..<n)

func isPossible() -> Bool {
    var calLines = Array(0..<n)
    
    for (_, idx) in selectedLines {
        calLines.swapAt(idx, idx+1)
    }
    
    if calLines == resultLines {
        return true
    } else {
        return false
    }
}

func solution(_ cnt: Int) {
    if cnt == m {
        if isPossible() {
            result = min(result, selectedLines.count)
        }
        return
    }
    
    selectedLines.append(arr[cnt])
    solution(cnt+1)
    selectedLines.removeLast()
    
    solution(cnt+1)
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[1], input[0]-1))
}
arr.sort(by: {$0.b<$1.b})

for (_, idx) in arr {
    resultLines.swapAt(idx, idx+1)
}

solution(0)
print(result)