let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func solution() {
    for i in 1...100 {
        var flag = false
        
        for xy in arr {
            if i >= xy[0] && i <= xy[1] {
                flag = true
            } else {
                flag = false
                break
            }
        }
        
        if flag {
            print("Yes")
            return
        }
    }
    
    print("No")
    return
}

solution()