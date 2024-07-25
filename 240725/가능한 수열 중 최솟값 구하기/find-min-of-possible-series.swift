import Foundation

let n = Int(readLine()!)!
var values = [Int]()
var selected = [Int]()

func isPossible() -> Bool {
    var len = 1
    
    while true {
        let (s1, e1) = (selected.count - len,  selected.count-1)
        let (s2, e2) = (s1-len, s1-1)
        
        if s2 < 0 {
            break
        }
        
        if selected[s1...e1] == selected[s2...e2] {
            return false
        }
        len += 1
    }
    
    return true
}

func solution(_ cnt: Int) {
    if cnt == n {
        print(selected.map{String($0)}.joined())
        exit(0)
    }
    
    for i in 4...6 {
        selected.append(i)
        if isPossible() {
            solution(cnt+1)
        }
        selected.removeLast()
    }
}

solution(0)