import Foundation

let n = Int(readLine()!)!
var values = [Int]()
var selected = [Int]()

func cal(_ num: [Int]) {
    for k in stride(from: 1, through: n/2, by: 1) {
        for i in 0..<n-k {
            if selected[i..<i+k] == selected[i+k..<i+2*k] {
                return
            }
        }
    }
    
    print(selected.map{String($0)}.joined())
    exit(0)
}

func solution(_ cnt: Int) {
    if cnt == n {
        cal(selected)
        return
    }
    
    for i in 4...6 {
        selected.append(i)
        solution(cnt+1)
        selected.removeLast()
    }
}

solution(0)