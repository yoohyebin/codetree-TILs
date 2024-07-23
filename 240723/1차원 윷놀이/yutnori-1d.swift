let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m ,k) = (input[0], input[1], input[2])
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var selected = [Int]()
var result = 0

func cal() -> Int {
    var scoreBoard = Array(repeating: 0, count: k+1)
    
    for i in 0..<n {
        scoreBoard[selected[i]] += arr[i]
    }
    
    return scoreBoard.filter{$0 >= m-1}.count
}

func solution(_ cnt: Int) {
    if cnt == n {
        result = max(result, cal())
        return
    }
    
    for i in 1...k {
        selected.append(i)
        solution(cnt+1)
        selected.removeLast()
    }
}

solution(0)
print(result)