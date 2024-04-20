let n = Int(readLine()!)!
var arr = [[Int]]()
var answer = "No"

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution(_ k: Int) -> Bool {
    for i in 1...100 {
        var flag = false
        
        for idx in 0..<n {
            if idx == k {continue}
            
            if i >= arr[idx][0] && i <= arr[idx][1] {
                flag = true
            } else {
                flag = false
                break
            }
        }
        
        if flag {
            return true
        }
    }
    
    return false
}

for i in 0..<n {
    if solution(i) {
        answer = "Yes"
        break
    }
}

print(answer)