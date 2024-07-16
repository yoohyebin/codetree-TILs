let n = Int(readLine()!)!
var result = 0


func solution(_ num: Int) {
    if num == n {
        result += 1
    } else {
        for i in 1...4 {
            if num+i > n {
                return
            } else {
                solution(num+i)
            }
        }
    }
}

solution(0)
print(result)