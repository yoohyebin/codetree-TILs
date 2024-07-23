let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m ,k) = (input[0], input[1], input[2])
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var selected = Array(repeating: 1, count: k)
var result = 0

func cal() -> Int {
    return selected.filter{$0 >= m}.count
}

func solution(_ cnt: Int) {
    result = max(result, cal())
    
    if cnt == n {
        return
    }
    
    for i in 0..<k {
        if selected[i] >= m {
            continue
        }

        selected[i] += arr[cnt]
        solution(cnt+1)
        selected[i] -= arr[cnt]
    }
}

solution(0)
print(result)